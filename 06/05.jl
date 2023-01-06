function ack(m, n)
    m isa Integer && n isa Integer || return nothing
    (m < 0 || n < 0) && return nothing
    if m == 0
        return n + 1
    else
        if n == 0
            return ack(m-1, 1)
        else
            return ack(m-1, ack(m, n-1))
        end
    end
end

@show ack(3, 4)
