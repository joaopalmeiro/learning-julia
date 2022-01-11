function square_of_sum(n)
    # https://docs.julialang.org/en/v1/manual/control-flow/#man-conditional-evaluation
    # https://docs.julialang.org/en/v1/base/collections/#Base.collect-Tuple{Any}
    # https://www.simonwenkel.com/2019/02/03/project-euler-problem-0006.html
    return n > 1 ? sum(1:n)^2 : n
end

function sum_of_squares(n)
    # https://docs.julialang.org/en/v1/base/collections/#Base.mapreduce-Tuple{Any,%20Any,%20Any}
    # https://github.com/programacaodinamica/exercism-julia/blob/main/difference-of-squares/difference-of-squares.jl
    return n > 1 ? mapreduce(x -> x^2, +, 1:n) : n
end

function difference(n)
    return square_of_sum(n) - sum_of_squares(n)
end
