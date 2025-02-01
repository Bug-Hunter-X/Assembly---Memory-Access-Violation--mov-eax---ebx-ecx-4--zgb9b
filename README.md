# Assembly Memory Access Violation Bug

This repository demonstrates a common bug in assembly programming related to memory access violations. The bug occurs in the `mov eax, [ebx+ecx*4]` instruction, where an invalid `ecx` value leads to accessing memory outside of the allocated space. This can result in program crashes or unpredictable behavior.

## Bug Description
The core issue lies in the calculation of the memory address using `ebx + ecx * 4`.  If `ecx` is excessively large or points to an invalid memory region, the resulting address is out of bounds. This causes a segmentation fault or access violation.

## How to Reproduce
1. Assemble and link the `bug.asm` file.
2. Run the resulting executable.
3. Observe the program crash or unpredictable behavior due to the memory access violation.

## Solution
The solution involves adding checks to ensure that `ecx` remains within the valid bounds before performing the memory access.  See `bugSolution.asm` for the corrected code.