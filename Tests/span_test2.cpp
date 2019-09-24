// Build and run with:
// clang++ -std=c++2a -stdlib=libc++ -Wall -Wextra -pedantic span_test2.cpp -o span_test2
// ./span_test2

#include <iostream>
#include <vector>
#include <span>
#include <cstdlib>

void print_content(std::span<int> container) {
    for(const auto &e : container) {
        std::cout << e << ' ';
    }
    std::cout << '\n';
}

void change_content(std::span<int> container) {
    for(auto &e : container) {
        e += 1;
    }
}

int main() {
    int a[]{23, 45, 67, 89};
    print_content(a);

    std::vector<int> v{1, 2, 3, 4, 5};
    print_content(v);

    size_t sz = 10;
    int *p = (int *)malloc(sz * sizeof(int));
    for(size_t i = 0; i < sz; ++i) {
        p[i] = 2 * i;
    }
    print_content({p, sz});
    change_content({p, sz});
    print_content({p, sz});
    free(p);
}

