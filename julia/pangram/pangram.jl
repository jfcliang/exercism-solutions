"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    input_low = lowercase(input)
    lower_alpha = 'a':'z'

    return all(
        [(c in input_low) for c in lower_alpha])    

end

