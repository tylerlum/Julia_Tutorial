using Printf
using Statistics

print("Enter a number ")
num1 = chomp(readline())

print("Enter a number ")
num2 = chomp(readline())

try
    val = (parse(Int32, num1)) / (parse(Int32, num2))
    if (val == Inf)
        error("Can't divide by zero")
    else
        println("val = $val")
    end
catch e
    println("e = $e")
end