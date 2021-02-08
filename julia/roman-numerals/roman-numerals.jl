function digit_conversion(digit::Integer, one::Char, five::Char, ten::Char)
    if digit == 9
        return one*ten
    end
    if 9 > digit >= 5
        digit = digit % 5
        return five*one^digit
    end
    if digit == 4
        return one*five
    end
    if digit < 4
        return one^digit
    end
end

function digit_conversion(digit::Integer, one::Char)
    if digit >= 4
        error("Input number exceeds maximum.")
    end

    return one^digit
end


function to_roman(number)
    if number <= 0
        error("Input number must be larger than 0.")
    end

    output = ""

    thousand = div(number, 1000)
    output *= digit_conversion(thousand, 'M')

    hundred = div(number % 1000, 100)
    output *= digit_conversion(hundred, 'C', 'D', 'M')

    ten = div(number % 100, 10)
    output *= digit_conversion(ten, 'X', 'L', 'C')

    one = number % 10
    output *= digit_conversion(one, 'I', 'V', 'X')

end

to_roman(1024)
