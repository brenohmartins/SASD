#-----------Multiple Instructions-----------

#in C we hve the peratio -> a = b + c - d;

# in Assembly RISC-V we can translate to:
add t, b, c; # t = b + c
sub a, t, d; # a =( t - d )= b + c - d

# We created a temporary variable 't' to make it possible to perform the operation of 'a'
# Rember: Use multiple simple instructions to perform operations
# RISC-V includes only simple and commonly used instructions