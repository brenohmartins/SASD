#-----MULTIPLICATION AND DIVISION----------
# The mul instruction multiplies two 32-bit numbers and returns a 32-bit value.

# Ex:

mul = s1, s2, s3 # Multiplies the values ​​in s2 and s3 and places the least significant 32 bits of the result in s1

# We have three versions of 'multiply high':

mulh # Multiply high signed signed
#Treat both operands as signed

mulhsu # Multiply high signed unsigned
#Treat the first operand as signed and the second as unsigned

mulhu #Multiply high unsigned unsigned
#Treat both operands as unsigned

# 32-bit division -> 32-bit quotient and remainder

div s3, s1, s2 # s3 = s1/s2

rem s4, s1, s2 # s4 = s1%s2