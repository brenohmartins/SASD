#-----TRAVEL INSTRUCTIONS----------
# Information about the number of shifts is in the 5 least significant bits of a record

sll #logical left shift
#Ex:
sll t0, t1, t2 # t0 = t1 << t2

srl #logical right shift
#Ex:
srl t0, t1, t2 # t0 = t1 >> t2

sra #arithmetic right shift
#Ex:
sra t0, t1, t2 # t0 = t1 >>> t2

#The amount of movement is an immediate between 0 and 31 (5 bits)
#When using an immediate, logical operators complete their information with bits with value 0, 
#whereas in the arithmetic operator, the values of bits 0 or 1 that are being shifted are preserved

#Ex:
slli t0, s5, 7 # shifts s5 in 7 spaces to the left and complete with 0
srli s1, s5, 17 #shifts s5 in 17 spaces to the right and complete with 0
srai t2, s5, 3 #shift s5 in 3 spaces to the right and preserve the value