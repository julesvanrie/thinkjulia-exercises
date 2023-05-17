function ispower(a, b)
    a == 1 && return true
    a == b && return true
    if a % b == 0
        return ispower(a / b, b)
    else
        return false
    end
end

@show 2^0

@show ispower(4, 2) == true
@show ispower(9, 3) == true
@show ispower(27, 3) == true
@show ispower(27, 2) == false
@show ispower(2, 2) == true
@show ispower(1, 2) == true
