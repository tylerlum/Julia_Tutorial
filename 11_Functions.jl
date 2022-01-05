using Printf
using Statistics

getSum(x, y) = x + y
x, y = 1, 2

println("$x + $y = $(getSum(x, y))")

function canIVote(age=16)
    if age > 18
        println("Can vote")
    else
        println("Can not vote")
    end
end
println("Can I vote as 43?")
canIVote(43)
println("Can I vote as 10?")
canIVote(10)

# Arguments passed by value
v1 = 5
function changeV1(v1)
    v1 = 10
end
changeV1(9)
println("changeV1(9)")
println("v1 = $v1")

function changeV1Global()
    global v1 = 10
end
changeV1Global()
println("changeV1Global()")
println("v1 = $v1")

# Unknown number of args
function getSum2(args...)
    sum = 0
    for a in args
        sum += a
    end
    println("sum = $sum")
end
println("getSum(1, 2, 3)")
getSum2(1, 2, 3)

# Return a value
function next2(val)
    return (val + 1, val + 2)
end

println("next2(1) = $(next2(1))")

# Return a function
function makeMultiplier(num)
    return function(x) return x * num end
end

mult3 = makeMultiplier(3)
println("mult3(10) = $(mult3(10))")

# Type specific arguments
function getSum3(num1::Number, num2::Number)
    return num1 + num2
end
function getSum3(num1::String, num2::String)
    return getSum3(parse(Int32, num1), parse(Int32, num2))
end
println("5 + 4 = $(getSum3(5, 4))")
println("5 + 4 = $(getSum3("5", "4"))")