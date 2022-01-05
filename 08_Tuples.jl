using Printf
using Statistics

t1 = (1, 2, 3, 4)  # Can't change afterwards
println("t1 = $t1")
println("t1[1] = $t1[1]")

for i in t1
    println(i)
end

t2 = ((1, 2), (3, 4))
println("t2 = $(t2)")
println("t2[1][1] = $(t2[1][1])")

t3 = (sue = ("Sue", 100), paul = ("Paul", 23))
println("t3.sue = $(t3.sue)")
println("t3.paul = $(t3.paul)")