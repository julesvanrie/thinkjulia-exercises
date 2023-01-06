using Luxor

function square(t, len)
    for i in 1:4
        Forward(t, len)
        Turn(t,90)
    end
end

tu = Turtle()

@svg square(tu, 300)
