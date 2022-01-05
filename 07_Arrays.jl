using Printf
using Statistics

# Create array of zeros by (type, *shape)
a1 = zeros(Int32, 2, 2)

# Create array of {type} with (value, *shape)
a2 = Array{Int32}(undef, 5)

a3 = Float64[]
a4 = [1, 2, 3]

println("a1 = $(a1)")
println("a2 = $(a2)")
println("a3 = $(a3)")
println("a4 = $(a4)")
println("a4[1] = $(a4[1])")
println("a4[end] = $(a4[end])")
println("5 in a4 = $(5 in a4)")
println("findfirst(isequal(2), a4) = $(findfirst(isequal(2), a4))")
println("findfirst(isequal(6), a4) = $(findfirst(isequal(6), a4))")

# Function
f(a) = (a >= 2) ? true : false
println("findall(f, a4) = $(findall(f, a4))")
println("count(f, a4) = $(count(f, a4))")

# Other functions
println("size(a4) = $(size(a4))")
println("length(a4) = $(length(a4))")
println("sum(a4) = $(sum(a4))")
splice!(a4, 2:1, [8, 9])  # ! indicates it modifies in-place
println("splice!(a4, 2:1, [8, 9])")
println("a4 = $(a4)")
splice!(a4, 2:3)
println("splice!(a4, 2:3)")
println("a4 = $(a4)")
println("maximum(a4) = $(maximum(a4))")
println("minimum(a4) = $(minimum(a4))")
println("a4 * 2 = $(a4 * 2)")
println("a4 = $(a4)")

a5 = [1, 3.14, "Hello"]  # Can have different types

# Array of functions
a6 = [sin, cos, tan]
for func in a6
    println("func(0) $(func(0))")
end

# 2D array
a7 = [1 2 3; 4 5 6]  # Doesn't need commas
print("a7 = $a7")
h, w = size(a7)
for n = 1:h, m = 1:w
    @printf("%d ", a7[n, m])
end
println()

println("a7[:, 2] = $(a7[:, 2])")
println("a7[2, :] = $(a7[2, :])")

a8 = collect(1:5)
println("a8 = $a8")

a9 = collect(2:2:10)
for n in a9 println(n) end

a10 = [n^2 for n in 1:5]
println("a10 = $a10")

push!(a10, 36)
println("push!(a10, 36)")
println("a10 = $a10")

a11 = [n * m for n in 1:5, m in 1:5]
println("a11 = $a11")

# (range of random vals, *shape)
a12 = rand(0:9, 5, 5)
println("a12 = $a12")
for n = 1:5
    for m = 1:5
        print(a12[n, m])
    end
    println()
end