using Printf

function mysqrt(a)
    x = a / 4
    while true
        y = 0.5(x + a/x)
        if abs(y - x) < 0.00000000001
            break
        end
        x = y
    end
    return x
end


function testsquareroot()
    println("a   mysqrt         sqrt           diff")
    println("-   ------         ----           ----")
    for a in 1.0:9.0
        print(a, " ")
        for number in [mysqrt(a), sqrt(a)]
            number_s = string(round(number, digits=11))
            print(number_s, " "^(14-length(number_s)))
        end
        println(abs(mysqrt(a) - sqrt(a)))
    end
end


testsquareroot()
