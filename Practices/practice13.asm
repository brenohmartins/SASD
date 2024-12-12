#-------------------FUNCTION CALLS----------------

#RISC-V function calling conventions

# call function:
jal func # jump and link

# return a function:
jr ra # jump register

#arguments a0- a7

#return value a0

# exemple c code ->

# int main()
# {
# int y;
# ...
# y = diferdesomas(2, 3, 4, 5);
# ...
# }
# int diferdesomas(int f, int g,
# int h, int i)
# {
# int resultado;
# resultado = (f + g) - (h + i);
# return resultado; // return

# assembly risc-v code:

# s7 = y

main:
    . . .
    addi a0, zero, 2  #arg 0 = 2
    addi a1, zero, 3  #arg 1 = 3
    addi a2, zero, 4  #arg 2 = 4
    addi a3, zero, 5  #arg 3 = 5

    jal different_sums  # calling the function
    add s7, a0, zero    # returned value
    . . .

different_sums:
    add t0, a0, a1      # t0 = f + g
    add t1, a2, a3      # t1 = h + i
    sub s3, t0, t1      # s3 = (f + g) - (h + i)
    add a0, s3, zero    # put return value in a0
    jr ra               # return to caller

# Exercise 1:

# C code ->

# int main()
# {
#   int y;
#   int x = 2;
#   y = f1(x);
# }
# int f1(int a)
# {
#   int res;
#   res = a<<2;
#   return res;
# }

# Assembly code:

# s7 = y, s6 = x

main:
    . . .
    addi s6, zero, 2  # x = 2
    add a0, s6, zero  # a0 = x
    jal f1            # call the function
    add s7, a0, zero  # returned value
    . . .

f1:
    slli s3, a0, 2    # res = a << 2
    add a0, s3, zero  # put the return value in a0

    jr ra             # return to caller