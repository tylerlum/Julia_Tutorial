using Printf
using Statistics

macro doMore(n, exp)
    quote
        for i = 1:$(esc(n))
            $(esc(exp))
        end
    end
end

@doMore(3, println("Hello"))

macro doWhile(exp)
    @assert exp.head == :while
    esc(quote
        $(exp.args[2])
        $exp
    end)
end

z = 0
@doWhile while z < 10
    global z += 1
    println("z = $z")
end