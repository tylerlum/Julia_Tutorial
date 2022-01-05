using Printf
using Statistics

d1 = Dict("pi" => 3.1415, "e" => 2.718)
println("d1 = $d1")

d1["golden"] = 1.618
delete!(d1, "pi")
println("haskey(d1, \"pi\") = $(haskey(d1, "pi"))")
println("haskey(d1, \"golden\") = $(haskey(d1, "golden"))")

println("keys(d1) = $(keys(d1))")
println("values(d1) = $(values(d1))")

for kv in d1
    println(kv)
end

for (key, value) in d1
    println(key, ": ", value)
end