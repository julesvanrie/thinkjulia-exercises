using Luxor


function arc(t, r, angle)
    rad = angle * π / 180
    len = 1
    n = rad * r / len
    n_full = 2*π*r / len
    for i in 1:n
        Forward(t, len)
        Turn(t, 360/n_full)
    end
end


function 💟(t, w)
    Turn(t, -90)
    arc(t, w/4, 180+45)
    len = w/4 + √2w/4
    Forward(t, len)
    Turn(t, 90)
    Forward(t, len)
    arc(t, w/4, 180+45)
end


size = 500
🐢 = Turtle(0, -100)
@svg 💟(🐢, size)
