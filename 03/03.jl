function dotwice(f, v)
    f(v)
    f(v)
end

function dofour(f, v)
    dotwice(f, v)
    dotwice(f, v)
end

function printtwice(s)
    println(s)
    println(s)
end

dotwice(printtwice, "spam")
