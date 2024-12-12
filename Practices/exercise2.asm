# C code:

# int main(){
#   int x = 2;
#   y = f1(x);
# }
# int f1(int a){
#   int res, diff;
#   res = a<<2;
#   diff = f2(res);
#   return diff;
# }
# int f2(int a){
#   int calc;
#   calc = (a<<3) - a
#   return calc;
# }

# Assembly code:

# s0 = x, s1 = res, s2 = diff, s3 = calc

main:
    addi s0, zero, 2
    add a0, s0, zero
    jal f1
    add s7, a0, zero

f1:
    slli s1, a0, 2 # res = a << 2
    jal f2
    add s2, s1, zero
    jr ra

f2:
    add t0, a0, zero # t0 = a
    slli t1, a0, 3   # t1 = a<<3
    sub s3, t1, t0   # calc = (a<<3) - a
    add s8, s3, zero
    jr ra