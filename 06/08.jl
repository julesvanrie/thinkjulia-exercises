function gcd(a, b)
    b == 0 && return a
    return gcd(b, a % b)
end


@show gcd(20, 10) == 10
@show gcd(20, 7) == 1
@show gcd(20, 16) == 4
