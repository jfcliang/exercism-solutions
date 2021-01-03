function score(x, y)
    distance = (x^2 + y^2)^0.5
    if distance > 10
        return 0
    elseif distance > 5
        return 1
    elseif distance > 1
        return 5
    end
        
return 10

end
