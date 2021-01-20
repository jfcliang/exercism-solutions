function encode_unit(output, counter, last_char)
    if last_char != '1'
        if counter == 1
            output *= last_char
        else
            output *= string(counter) * last_char
        end
    end
    return output
end

function encode(s)

    output = ""
    counter = 1
    last_char = '1'

    for c in s
        if c != last_char
            output = encode_unit(output, counter, last_char)
            counter = 1
            last_char = c
        else
            counter += 1
        end
    end

    output = encode_unit(output, counter, last_char)
 
    return output
end


function decode(s)
    output = ""
    substr = ""
    for c in s
        substr *= c
        if !isdigit(c)
            if length(substr) == 1
                output *= substr
                substr = ""
            else
                target = last(substr)
                num = Meta.parse(chop(substr, tail=1))
                output *= target ^ num
            end
            substr = ""
        end
    end

    return output
end

decode("2A3B4C")
