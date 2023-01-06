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

tu = Turtle()

@svg polygon(tu, 40, 10)
