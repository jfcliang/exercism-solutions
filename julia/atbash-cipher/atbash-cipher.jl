function process_letter(input::Char)
    input_n = Int(input)

    if 97 <= input_n <= 122
        return Char(219 - input_n)
    elseif 48 <= input_n <= 57
        return input
    else
        error("Input string not fully stripped.") 
    end
end


function insert_space(input::String)
    input_array = collect(input)
    len = length(input_array)

    new_array = Char[]

    added_len = len + div(len-1, 5)

    for i in 1:added_len
        if i % 6 == 0 
            push!(new_array, ' ')
        else
            push!(new_array, input_array[i - div(i, 6)]) 
        end
    end

    return String(new_array)
end


function strip_string(input::String)
    lc_array = collect(lowercase(input))
    stripped = [ch for ch in lc_array if (97 <= Int(ch) <= 122) | (48 <= Int(ch) <= 57)]
    return stripped
end


function encode(input::String)
    
    stripped = strip_string(input)
    encoded = String([process_letter(ch) for ch in stripped])

    return insert_space(encoded)
end


function decode(input::String)
    stripped = strip_string(input)
    
    return String([process_letter(ch) for ch in stripped])
end
