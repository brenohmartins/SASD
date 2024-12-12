# Convert the code below to RISC-V Assembly

#C Code ->

# int a = 5;
# int b = 12;
# int c = 20;
# int result;
# result = 8*(a + 2*b - 4*c)

# Assembly code:

# s0 = a, s1 = b
# s2 = c, s3 = result

addi s0, zero, 5   # a = 5
addi s1, zero, 12  # b = 12
addi s2, zero, 20  # c = 20

slli t0, s1, 1    # t0=b*2
slli t1, s2, 2    # t1=c*4
sub t2, t0, t1    # t2=2*b - 4*c
add t3, s0, t2    # t3 = a + t2

slli s3, t3, 3    # s3 = 4 * t3
#remember 2^3 = 8, 2^2=4, 2^1=2, to make the shifts