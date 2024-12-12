#--------------ACCESSING VECTORS-------------

#remember in the ISA RISC-V the memory is addressed by bytes
#in that case we have to add the value of 4 to access the next element of a vector

#Ex: in C code ->

#int array[5];
#array[0] = array[0] * 2;
#array[1] = array[1] * 2;

#assembly code we have:

#s0 = base adress of array
# our base address is 0x123B4780

# first place we have to load the base address in s0
# to make this possible we need to load 32 bits, and we must use the instructions 'lui' and 'addi'

lui s0, 0x123B4         # s0 = 0x123B4000
addi s0, s0, 0x780      # s0 = 0x123B4780

lw t1, 0(s0)            # t1 = array[0]
slli t1, t1, 1          # t1 = t1 * 2
sw t1, 0(s0)            # array[0] = t1

lw t1, 4(s0)            # t1 = array[1]
slli t1, t1,            1 # t1 = t1 * 2
sw t1, 4(s0)            # array[1] = t1

#----Acessing vectors usinf 'for'------------

#C code ->

# int array[1000];
# int i;
# for(i=0; i<1000; i=i+1)
# array[i]=array[i]*8;

# Assembly code:

# s0 = base address vector is  = 0x23B8F400,
# s1 = i

lui s0, 0x23B8F       # s0 = 23B8F000
addi s0, s0, 0x400    # s0 = 23B8F000 + 00000400 = 23B8F400

addi s1, zero, 0        #i = 0
addi t0, zero, 1000     # t0 = 1000

for:
bge s1, s0, done # if not then done
slli t1, s1, 2   # t1 = i * 4
add t1, t1, s0   # address of array[i]

lw t2, 0(t1)     # t2 = array[i]
slli t2, t2, 3   # t2 = = array[i] * 8
sw t2, 0(t1)     # array[i] = array[i] * 8

addi s1, s1, 1   # i = i + 1
j for            #jump to the label 'for'

done:            # label done