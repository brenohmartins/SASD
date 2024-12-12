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

# when we use the 'for' loop, remember that it works as follows => for (initialization; condition; loop operation)

#For exemple, code in C:

# int sum = 0;
# int i;

#for (i=0; i!=10; i = i+1){
#   sum = sum + i;
#}

#In assembly we have

#s0 = i, s1 = sum

addi s1, zero, 0  # sum = 0
addi s0, zero, zero  # i = 0
addi t0, zero, 10 # t = 10

for: #label
beq s0, t0, done # for i = 10 jump to done
add s1, s1, s0 # sum = sum + i
addi s0, s0, 1 # i = i + 1 
j for # jump to label for

done: