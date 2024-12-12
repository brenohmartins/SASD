#----------------Types of Deviations------------

#Conditional:

beq #branch if equal 
bne #branch if not equal
blt #branch if less than
bge #branch if greater than or equal

#Inconditional:

j #jump

# we use labels ':' to indicate the localization of a instruction

#Ex: 

addi s0, zero, 4 # s0 = 0 + 4 = 4
addi s1, zero, 1 # s1 = 0 + 1 = 1

slli s1, s1, 2 # s1 = 1 << 2 = 4

beq s0, s1, target # detour is taken
addi s1, s1, 1 #not executed
sub s1, s1, s0 #not executed

target: # label
add s1, s1, s0 # s1 = 4 + 4 = 8

# Jump (j) exemple:

j target # jump to target
srai s1, s1, 2 #not executed
addi s1, s1, 1 #not executed
sub s1, s1, s0 #not executed

target:
add s1, s1, s0 # s1 = 1 + 4 = 5