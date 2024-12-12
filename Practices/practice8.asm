#------------Conditional Sentences-------------

# Conditional sentences: if, if/else

# Code in C:
# if (i==j)
#   f=g+h;
# f = f - i;

# In Assembly RISC-V

# s0=f, s1=g, s2=h, s4=i, s4=j
# in assembly we test the opposing case (i!=j) using 'bne'

bne s3, s4, L1  # if (i!=j)
add s0, s1, s2 #f = g + h

L1: #label
sub s0, s0, s3 #f = f - i

# for example the same code but with an else we have in assembly:

# s0 = f, s1 = g, s2 = h
# s3 = i, s4 = j

bne s3, s4, else # if (i!=j)
add s0, s1, s2 #f = g + h
j done # end of program

else: #label
sub s0, s0, s3 # f = f - i