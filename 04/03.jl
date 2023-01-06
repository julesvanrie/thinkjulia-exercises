using Luxor

function square(t)
    for i in 1:4
        Forward(t, 100)
        Turn(t,90)
    end
end


tu = Turtle()

@png square(tu)
