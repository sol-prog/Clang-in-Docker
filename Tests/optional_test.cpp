// C++17 optional test.
// You can compile the code with:
// clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic optional_test.cpp -o optional_test
#include <iostream>
#include <optional>

void show_optional_value(const std::optional<int> &o) {
    // Print the optional has a value if it is not empty
    if(o) {
        std::cout << "Optional value is: " << *o << '\n';
    } else {
        std::cout << "Optional is empty\n";
    }
}
int main() {
    // Create an empty optional
    std::optional<int> o1;

    // Show the optional value
    show_optional_value(o1);

    // Store a value in the above optional variable
    o1 = -33;

    // Show the optional value
    show_optional_value(o1);
}

