using Luxor

function square(t, len)
    for i in 1:4
        Forward(t, len)
        Turn(t,90)
    end
end

function polygon(t, len, n)
    for i in 1:n
        Forward(t, len)
        Turn(t,360/n)
    end
end

function circle(t, r)
    len = 2
    n = 2*pi*r / len
    polygon(t, len, n)
end

tu = Turtle()

@svg circle(tu, 100)
