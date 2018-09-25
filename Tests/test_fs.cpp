// g++-8 -std=c++17 -Wall -pedantic test_fs.cpp -o test_fs -lstdc++fs
// clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic test_fs.cpp -o test_fs -lc++fs

#include <iostream>
#include <filesystem>

int main() {
    for(auto &file : std::filesystem::recursive_directory_iterator("./")) {
        std::cout << file.path() << '\n';
    }
}
