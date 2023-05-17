path = joinpath(splitdir(@__FILE__)[1], "..", "data")
filename = joinpath(path, "words.txt")

# Creation function using a oneliner because it's so short
hasno_e(word) = 'e' in word

count_no_e = 0
count_e = 0
for line in eachline(filename)
    global count_no_e, count_e  # otherwise complains: is it local within for or global?
    count_e +=1
    if hasno_e(line)
        print(line, " ")
        count_no_e += 1
    end
end
println("\n\nProportion: $(round(count_no_e / count_e *100, digits=2))%")
