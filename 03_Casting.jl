using Printf
using Statistics

# Casting
c2 = Char(120)
i1 = UInt8(trunc(3.14))
i2 = parse(Int8, "1")
f1 = parse(Float64, "1")

println("c2 = Char(120) = $c2")
println("i1 = UInt8(trunc(3.14)) = $i1")
println("i2 = parse(Int8, \"1\") = $i2")
println("f1 = parse(Float64, \"1\") = $f1")