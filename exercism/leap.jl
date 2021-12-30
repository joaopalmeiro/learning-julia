function is_leap_year(year)
    # More info: https://docs.julialang.org/en/v1/manual/control-flow/#Short-Circuit-Evaluation
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end
