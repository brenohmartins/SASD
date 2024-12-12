#-----------Factorial function------------

# C code:

# int fatorial(int n) {
#   if (n <= 1)
#       return 1;
# else
#   return (n*fatorial(n−1));
# }

# In assembly

fatorial:
    addi t0, zero, 1 #temporary = 1
    bge a0, t0, else #if n>=1 go to else
    addi a0, zero, 1 # otherwise, return 1

    jr ra            # return

else:
    addi a0, a0, -1 #n = n -1

    jal fatorial    # call the function

    mul a0, t1, a0  # a0 = n * fatorial (n-1)

    jr ra           # return