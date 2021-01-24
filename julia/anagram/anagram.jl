function single_anagram(subject, candidate)

    s_len = length(subject)
    if s_len != length(candidate)
        return false
    end

    used = [false for j in 1:s_len]

    for c in candidate
        found = false
        for i in 1:s_len
            if !used[i] & (c == subject[i])
                used[i] = true
                found = true
                break
            end
        end
        if !found
            return false
        end
    end    
    return true
end

function detect_anagrams(subject, candidates)

    l_sub = lowercase(subject)
    output =  unique(
        [cand for cand in candidates if single_anagram(l_sub, lowercase(cand))]
    )

    
end
