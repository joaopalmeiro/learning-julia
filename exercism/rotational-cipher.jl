function rotate(key::Int, msg::String)
    return map(c -> rotate(key, c), msg)
end

function rotate(key::Int, c::Char)
    # https://en.wikipedia.org/wiki/Caesar_cipher
    # https://rosettacode.org/wiki/Caesar_cipher#Julia
    if c in 'a':'z'
        shft = 'a'
        # https://docs.julialang.org/en/v1/manual/strings/#man-characters
        shft + (c - shft + key) % 26
    elseif c in 'A':'Z'
        shft = 'A'
        shft + (c - shft + key) % 26
    else
        c
    end
end

# Source: https://exercism.org/tracks/julia/exercises/rotational-cipher/solutions/2c423955e21c45d28ad20d04af99cbbb
# https://docs.julialang.org/en/v1/manual/metaprogramming/#meta-non-standard-string-literals
macro R13_str(msg)
    return rotate(13, msg)
end

for i in 0:26
    # https://docs.julialang.org/en/v1/manual/metaprogramming/#Code-Generation
    # https://docs.julialang.org/en/v1/manual/metaprogramming/#Symbols
    # https://docs.julialang.org/en/v1/manual/metaprogramming/#man-expression-interpolation
    @eval macro $(Symbol('R', i, "_str"))(msg)
        return rotate($i, msg)
    end
end
