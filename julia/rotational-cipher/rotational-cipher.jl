function rotate(n::Int, target::Char)
    ascii = Int(target)

    if 97 <= ascii <= 122
        # Lower case letters
        code = ascii - 97
        code_1 = (code + n) % 26

        return Char(code_1 + 97)

    elseif 65 <= ascii <= 90
        # Upper case letters
        code = ascii - 65
        code_1 = (code + n) % 26

        return Char(code_1 + 65)

    else
        return target
    end

end

function rotate(n::Int, target::String)
    return String([rotate(n, c) for c in target])
end

for i in 0:26
    macro_name = Symbol("R$(i)_str")
    @eval begin 
        macro $macro_name(p) 
            rotate($i, p) 
        end
    end
end
