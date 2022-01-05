using Printf
using Statistics

open("random2.txt", "w") do file
    write(file, "Here is some random text\nIt is great\n")
end

open("random2.txt") do file
    data = read(file, String)
    println("data = $data")
end

open("random2.txt") do file
    for line in eachline(file)
        println("line = $line")
    end
end