// C++20 std::is_constant_evaluated test
// you can build the code with:
// clang++ -std=c++2a -stdlib=libc++ -Wall -Wextra -pedantic is_constant_evaluated_test.cpp -o is_constant_evaluated_test
#include <type_traits>
#include <iostream>

constexpr int test(int a, int b) {
    if(std::is_constant_evaluated()) {
        return a + b;
    } else {
        return a + b;
    }
}

int main() {
    constexpr int r = test(45, 20);
    static_assert(r == 65, "Test passed");
}

