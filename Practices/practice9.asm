#-------------------LOOPS---------------
# Loops: while, for

# Code in C:

# int pow = ;
# int x = 0;

# while (pow != 128) {
#   pow = pow*2;
#   x = x + 1;
# }

# In Assembly we have:

# s0 = pow, s1 = x

addi s0, zero, 1 # pow = 0 + 1
addi s1, zero, 0 # x = 
addi t0, zero, 128 # t = 128

while:
beq s0, t0, done  # if pow = to, jump to done

slli s0, s0, 1    # shift s0 in 2 spaces, 1*2 = 2
addi, s1, s1, 1   # x = x +1
j while           # jump to the while label

done:           # end of program