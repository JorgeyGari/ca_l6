#include <iostream>
#include <thread>
#include <vector>

class counter {
public:
  counter() : value_{0}, time_{0} {}

  void update() { value_ += 1; time_ += 0.25; }

  void print() const { std::cout << "counter = " << value_ << "\n"; }

private:
  std::atomic<double> value_;
  std::atomic<double> time_;
};

int main() {
  using namespace std::chrono;
  auto t1 = high_resolution_clock::now();

  constexpr int num_threads = 16;

  counter count;

  std::vector<std::thread> tasks;
  for (int i = 0; i < num_threads; ++i) {
    tasks.emplace_back([&] {
      for (int i = 0; i < 100'000; ++i) {
        count.update();
      }
    });
  }

  for (auto &t : tasks) {
    t.join();
  }

  auto t2 = high_resolution_clock::now();

  auto diff = duration_cast<microseconds>(t2 - t1);

  count.print();
  std::cout << "Time = " << diff.count() << " microseconds\n";

  return 0;
}