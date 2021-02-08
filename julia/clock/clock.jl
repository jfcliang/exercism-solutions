using Dates
using Printf


struct Clock

    hr::Integer
    min::Integer

    function Clock(hr::Integer, min::Integer)

        # Add/subtract extra minutes
        if min % 60 == 0
            hr += div(min, 60)
            min = 0
        elseif min < 0
            hr += div(min, 60) - 1
            min = min % 60 + 60
        else
            hr += div(min, 60)
            min = min % 60
        end
        
        if hr % 24 == 0
            hr = 0
        elseif hr < 0
            hr = hr % 24 + 24
        else
            hr = hr % 24
        end

        new(hr, min)
    end
end


function Base.:+(clock::Clock, time::Dates.Minute)
    delta_mins = time.value
    return Clock(clock.hr, clock.min + delta_mins)
end


function Base.:-(clock::Clock, time::Dates.Minute)
    delta_mins = time.value
    return Clock(clock.hr, clock.min - delta_mins)
end


function Base.show(io::IO, clock::Clock)
    @printf(io, "%2d:%2d", clock.hr, clock.min)
end
