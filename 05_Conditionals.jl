using Printf
using Statistics

age = 12
println("age = $age")

# Conditional
if age >= 5 && age <= 6
    println("You are in Kindergarten")
elseif age >= 7 && age <= 13
    println("You are in Middle school")
elseif age >= 14 && age <= 18
    println("You are in High school")
else
    println("Stay Home")
end

# Ternary
@printf("true || false = %s\n", true || false ? "true" : "false")
@printf("true && false = %s\n", true && false ? "true" : "false")