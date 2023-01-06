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

function arc(t, r, angle)
    rad = angle * pi / 180
    len = 1
    n = rad*r / len
    n_full = 2*pi*r / len
    for i in 1:n
        Forward(t, len)
        Turn(t,360/n_full)
    end
end

function circle(t, r)
    arc(t, r, 360)
end

tu = Turtle()

@svg arc(tu, 100, 90)
