"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
    if year % 100 == 0
        if year % 400 == 0
            return true
        end
    elseif year % 4 == 0 
        return true
    
    end
    return false
end

