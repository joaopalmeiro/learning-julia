function count_nucleotides(strand)
    default_count = 0
    nucleotides = "ACGT"

    res = Dict(n => default_count for n in nucleotides)

    for n in strand
        # https://docs.julialang.org/en/v1/manual/strings/#Common-Operations
        if occursin(n, nucleotides)
            res[n] = res[n] + 1
        else
            throw(DomainError("Invalid strand"))
        end
    end

    return res
end
