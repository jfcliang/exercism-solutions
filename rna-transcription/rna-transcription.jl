function to_rna(dna)
    transcription_dict = Dict(
        'A' => 'U', 'G' => 'C', 
        'C' => 'G', 'T' => 'A'
    )
    rna = ""

    for node in dna
        try 
            rna *= transcription_dict[node]
        catch e
            error("Invalid DNA node: " * node)
        end
    end

return rna

end

