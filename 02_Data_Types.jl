using Printf
using Statistics

function changeNum()
    x::Int8 = 10

    # This would cause an error
    # x = "Dog"
    return x
end

returnValue = changeNum()
println("returnValue = $returnValue")

"""
Other datatypes include:
* Int8, Int16, Int32, Int64
* UInt8, ...
* Float32, Float64
* BigFloat, BigInt
"""

# Char
c = 'a'
println("c = $c")