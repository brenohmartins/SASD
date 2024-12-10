#-----------INSTRUCTIONS WITH CONSTANTS-----------

#instruction 'addi', specifies operators in the same instruction

# Ex - code in C: a = b + 6;
#In Assembly RISC-V

# s0=a, s1=b,
addi s0, s1, 6 # a = b + 6

# we can use 'hex(0x)', binarie(0b) or decimal to specify a constant 
# Constants (immediate) have 12 bits in 2 complement (sign-extended to 32 bits)
# To create larger constants, we must use the 'lui' (load upper immediate) instruction followed by the addi instruction
# The 'lui' instruction loads a 20-bit constant into the most significant positions of the register 
# and places ‘0’ in the remaining positions

# Ex: code in C - a = 0xABCDE123;
# In Assembly RISC-V

lui s2, 0xABCDE # s2=0xABCDE000
addi s2, s2, 0x123 # s2=0xABCDE123

# If we have a 12-bit value with the value 1 in the most significant bit, we must add the value ‘1’ 
# to the number that we carry in the 20 most significant bits
