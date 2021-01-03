"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    count = Dict(
        'A' => 0, 'G' => 0, 
        'C' => 0, 'T' => 0
    )
    for x in strand
        try
            count[x] += 1
        catch e
            throw(DomainError(x, "Invalid nucleotide"))
        end
    end

    return count

end
