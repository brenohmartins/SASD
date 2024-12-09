#-----------Registers-----------

#Registers used for specific purposes:
# 'zero' always keeps the value constant 0
# Saved registers, S0-S11, used to store variables

# Temporary register, t0-t6, used to maintain intermediate values during a bigger computation

#----------INSTRUCTIONS WITH REGISTERS-----------

#code in C => a = + c;
#code in Assembly RISC-V:

#s0 = a, s1 = b, s2 = c

add s0,s1,s2

#conde in C:  a = b + c- d;

# in assembly we have: s0=a, s1=b, s2=c, s3=d, t0=t

add t0,s1,s2 # t=b+c
sub s0,t0,s3 # a = t - d

# translate de code in C to Assembly RISC-V
#code C: a = b + c;
#	 d = b – c;
#	 b = (d-a) + (d+a)

#-----Assembly RISC-V Code----------
#s0=a, s1=b, s2=c, s3=d, t0=tmp1, t1=tmp2

add s0, s1, s2 # a=b+c
sub s3, s1, s2 # d=b-c
sub t0, s3, s0 # t0 = (d-a)
add t1, s3, s0 # t1 = (d+a)
add s1, t0, t1 # b = tmp1+tmp2 = (d-a) + (d+a)




