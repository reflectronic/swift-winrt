#include <iostream>
#include <fstream>

#include <winmd_reader.h>

int main(int argc, char* argv[])
{
    winmd::reader::cache c{ argv[1] };
    
    for (auto&& [name, children] : c.namespaces())
    {
        std::cout << name << std::endl;
        
        for (auto&& [n, c] : children.types)
        {
            std::cout << "    " << n << std::endl;
        }
    }
}
