function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first):prevind(word, last)]
end

function ispalindrome(word)
    length(word) == 0 && return true
    length(word) == 1 && return true
    if first(word) == last(word)
        return ispalindrome(middle(word))
    else
        return false
    end
end

@show ispalindrome("a")
@show ispalindrome("aa")
@show ispalindrome("ab")
@show ispalindrome("aba")
@show ispalindrome("abba")
@show ispalindrome("abca")
@show ispalindrome("abcba")
@show ispalindrome("palindrome")
