function ispangram(input)
    # https://docs.julialang.org/en/v1/base/strings/#Base.Unicode.lowercase
    # https://docs.julialang.org/en/v1/base/strings/#Base.join
    # https://docs.julialang.org/en/v1/base/collections/#Base.all-Tuple{Any}
    input = lowercase(input)
    alphabet = join('a':'z')

    return all(c in input for c in alphabet)
end
