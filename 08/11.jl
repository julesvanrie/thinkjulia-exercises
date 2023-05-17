function rotateword(word, number)
    result = ""
    for c in word
        # if lower or uppercase, we start from a different reference
        start = c < 'a' ? 'A' : 'a'
        # starting from a or A as letter 0, add number and wrap around with modulo
        new_i = (Int(c) - Int(start) + number) % 26
        # modulo can return a negative number, in that case we just need to add 26
        new_i = new_i < 0 ? new_i + 26 : new_i
        # take the appropriate start letter and move to the new position
        result *= Char(Int(start) + new_i)
    end
    return result
end

@show rotateword("IBM", -1) == "HAL"
@show rotateword("cheer", 7) ==  "jolly"
@show rotateword("melon", -10) == "cubed"
