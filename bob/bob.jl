function bob(stimulus)
    is_empty = all([isspace(c) for c in stimulus])
    
    if !is_empty
        is_question = last(
            [c for c in stimulus if !isspace(c)]) == '?'
    else
        is_question = false
    end

    is_allcaps = (
        (uppercase(stimulus) == stimulus) &
        any([isletter(c) for c in stimulus]))
    # All caps mean 1. there are letters
    # 2. letters are already uppercase

    if is_empty
        return "Fine. Be that way!"
    elseif is_question
        if is_allcaps
            return "Calm down, I know what I'm doing!"
        else
            return "Sure."
        end
    elseif is_allcaps
        return "Whoa, chill out!"
    else
        return "Whatever."
    end
end
