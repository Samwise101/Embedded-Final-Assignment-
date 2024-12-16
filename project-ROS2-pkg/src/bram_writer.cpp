#include "drivers/bram_uio.h"
#include <iostream>
#include <string>

#define BRAM_BASE_ADDR 0xA0000000U
#define BRAM_SIZE 4                 // 32 bits


int main(int argc, char *argv[]) {
    try {
        // Create BRAM instance
        BRAM bram(0, BRAM_SIZE);

        // Write a value to the BRAM at index 0
        uint32_t write_value = 0xFAFAFAFA; // Example value
        bram[0] = write_value;

        // Read the value back from BRAM
        uint32_t read_value = bram[0];

        // Print the result
        std::cout << "Written value: 0x" << std::hex << write_value << std::endl;
        std::cout << "Read value: 0x" << std::hex << read_value << std::endl;
        
    } catch (const std::string &e) {
        // Catch and display any errors
        std::cerr << "Error: " << e << std::endl;
        return -1;
    }

    return 0;
}

