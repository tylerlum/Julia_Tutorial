using Printf
using Statistics

set1 = Set(["Jim", "Pam", "Jim", "Stanley"])
println("set1 = $set1")

push!(set1, "Michael")
print("push!(set1, \"Michael\")")

set2 = Set(["Stanley", "Meredith"])

println("union(set1, set2) = $(union(set1, set2))")
println("intersect(set1, set2) = $(intersect(set1, set2))")
println("setdiff(set1, set2) = $(setdiff(set1, set2))")