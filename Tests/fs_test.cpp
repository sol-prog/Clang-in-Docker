// C++17 filesystem test.
// you can build the code with:
// clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic fs_test.cpp -o fs_test -lc++fs

#include <iostream>
#include <filesystem>

int main() {
    for(auto &file : std::filesystem::recursive_directory_iterator("./")) {
        std::cout << file.path() << '\n';
    }
}

