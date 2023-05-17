path = joinpath(splitdir(@__FILE__)[1], "..", "data")
filename = joinpath(path, "words.txt")

function isabecedarian(word)
    first = firstindex(word)
    second = nextind(word, first)
    while true
        if word[second] < word[first]
            return false
        end
        if second == lastindex(word)
            break
        end
        first = second
        second = nextind(word, first)
    end
    println(word)
    return true
end

count_no_forbidden = 0
for line in eachline(filename)
    global count_no_forbidden  # otherwise complains: is it local within for or global?
    if !isabecedarian(line)
        count_no_forbidden += 1
    end
end
println("Abecedarians: $(count_no_forbidden)")
