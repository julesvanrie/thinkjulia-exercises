path = joinpath(splitdir(@__FILE__)[1], "..", "data")
filename = joinpath(path, "words.txt")

for line in eachline(filename)
    if length(line) > 20
        println(line)
    end
end
