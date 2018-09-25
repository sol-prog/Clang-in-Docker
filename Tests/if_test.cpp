#include <iostream>

int main() {
    // if block with init-statement:
    if(int a = 5; a < 8) {
        std::cout << "Local variable a is < 8\n";
    } else {
        std::cout << "Local variable a is >= 8\n";
    }
    return 0;
}
