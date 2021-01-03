"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw((a, b), ArgumentError("Unequal strand lengths!"))
    end
    hamming_distance = 0

    for i in 1:length(a)
        if a[i] != b[i]
            hamming_distance += 1
        end
    end

    return hamming_distance
end
