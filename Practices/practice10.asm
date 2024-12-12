#------------COMPARISON WITH LESS THAN-------------

#Code in C:

# add the powers of 2 from 1 to 100
#int sum = 0;
#int i;
#for (i=1; i < 101; i = i*2) {
#sum = sum + i;
#}

#in assembly:

#s0 = i, s1 = sum

addi s1, zero, 0
addi s0, zero, 1
addi t0, zero, 101

for:
bge s0, t0, done
add s1, s1, s0
slli s0, s0, 1
j for

done:
