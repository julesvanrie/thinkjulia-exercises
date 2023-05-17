path = joinpath(splitdir(@__FILE__)[1], "..", "data")
filename = joinpath(path, "words.txt")

# Moving away from oneliner because it would become difficult to read
function hasno_forbidden(word, forbidden)
    for c in forbidden
        if c in word
            return false
        end
    end
    return true
end

print("Enter forbidden letters: ")
forbidden = readline(stdin)

count_no_forbidden = 0
for line in eachline(filename)
    global count_no_forbidden  # otherwise complains: is it local within for or global?
    if hasno_forbidden(line, forbidden)
        count_no_forbidden += 1
    end
end
println("Without $(forbidden): $(count_no_forbidden)")
