using Printf
using Statistics

# While loop
i = 1
while i < 20
    if (i % 2) == 0
        println("i = $i")
        global i += 1  # i not in local scope
        continue
    end
    global i += 1
    if i >= 10
        break
    end
end
println()

# For loop
for i = 1:5
    println("i = $i")
end
println()

for i = [12, 14, 16]
    println("i = $i")
end
println()

# Double for loop
for i = 1:5, j = 2:2:10
    println("i = $i, j = $j")
end