using Printf
using Statistics

# Immutable
struct Customer
    name::String
    balance::Float32
    id::Int
end

bob = Customer("Bob Smith", 10.50, 123)
println("bob = $(bob)")
println("bob.name = $(bob.name)")


# Mutable
mutable struct CustomerMutable
    name::String
    balance::Float32
    id::Int
end

bobMutable = CustomerMutable("Bob Smithe", 10.50, 123)
println("bobMutable = $(bobMutable)")
println("bobMutable.name = $(bobMutable.name)")

bobMutable.name = "Bob Smitheee"
println("bobMutable = $(bobMutable)")
println("bobMutable.name = $(bobMutable.name)")