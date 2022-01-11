function raindrops(number)
    # https://docs.julialang.org/en/v1/manual/strings/#man-concatenation
    # https://docs.julialang.org/en/v1/manual/control-flow/#Short-Circuit-Evaluation
    drops = ""

    # drops = (number % 3) == 0 ? drops * "Pling" : drops
    # drops = (number % 5) == 0 ? drops * "Plang" : drops
    # drops = (number % 7) == 0 ? drops * "Plong" : drops
    number % 3 == 0 && (drops *= "Pling")
    number % 5 == 0 && (drops *= "Plang")
    number % 7 == 0 && (drops *= "Plong")

    return isempty(drops) ? string(number) : drops
end
