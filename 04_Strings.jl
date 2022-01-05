using Printf
using Statistics

# String functions
s1 = "Random words"
println("length(s1) = $(length(s1))")
println("s1[1] = $(s1[1])")  # 1-indexing instead of 0-indexing
println("s1[end] = $(s1[end-1])")
println("s1[1:3] = $(s1[1:3])")

s2 = string("Tyler ", "Lum")
println("s2 = $(s2)")

s3 = "Computer " * "Science"
println("s3 = $(s3)")

i3 = 2
i4 = 3
println("$i3 + $i4 = $(i3 + i4)")