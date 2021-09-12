#include <array>
#include <iostream>

int main() {
  std::array<int, 5> a;
  for (auto item : a) {
    std::cout << item << " ";
  }
}