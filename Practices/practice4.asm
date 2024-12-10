#-----------INSTRUCTIONS WITH CONSTANTSREAD WORD-ADDRESSABLE MEMORY-----------

# load word -> 'lw'

# format:
lw t1, 5(s0)  
lw destiny, deslocament(base)

# Address calculation: 
# add base address (s0) to offset (5)
# addres = (s0 + 5)

# Result:
# t1 holds the data value at address (s0 + 5)
# Obs: Any record can be used as a base address

# Ex: read a data word from memory address 1 to s3

# addres = (0 + 1) = 1
# s3 = 0xF2F1AC07 after loading

# In Assembly RISC-V
lw s3, 1(zero) # read word from memory 1 to s3