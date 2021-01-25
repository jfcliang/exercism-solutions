# This solution is quite messy - should revisit sometime

function single_anagram(subject, candidate)
    lc_sub = lowercase(subject)
    lc_cand = lowercase(candidate)
    sub_sort = sort(collect(lc_sub))
    cand_sort = sort(collect(lc_cand))

    return (sub_sort == cand_sort) & (lc_sub != lc_cand)

end

function detect_anagrams(subject, candidates)

    output =  [cand for cand in candidates if single_anagram(subject, lowercase(cand))]

end
