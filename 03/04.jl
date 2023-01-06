# Not the most straighforward way, but wanted to try varargs

function dotwice(f, v...)
    f(v...)
    f(v...)
end

function dofour(f, v...)
    dotwice(f, v...)
    dotwice(f, v...)
end

function printhori(number, col, space)
    println((col * space^4)^number * col)
end

function printrow(number)
    printhori(number, "+", "-")
    dofour(printhori, number, "|", " ")
end


function printgrid()
    dotwice(printrow, 2)
    printhori(2, "+", "-")
end

function printgrid4()
    dofour(printrow, 4)
    printhori(4, "+", "-")
end

printgrid4()
