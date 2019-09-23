#include <iostream>
#include <vector>
#include <span>

void print_content(std::span<int> container) {
    for(const auto &e : container) {
        std::cout << e << ' ';
    }
    std::cout << '\n';
}

int main() {
    int a[]{23, 45, 67, 89};
    print_content(a);

    std::vector<int> v{1, 2, 3, 4, 5};
    print_content(v);
}

