using Luxor

function koch(t, x)
    if x < 3
        Forward(t, x)
        return
    end
    koch(t, x/3)
    Turn(t, -60)
    koch(t, x/3)
    Turn(t, 120)
    koch(t, x/3)
    Turn(t, -60)
    koch(t, x/3)
end

function snowflake(t, x)
    for i in 1:3
        koch(t, x)
        Turn(t, 120)
    end
end

tu = Turtle()

@svg snowflake(tu, 200)
