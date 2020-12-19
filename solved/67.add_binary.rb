# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    ia = a.length-1
    ib = b.length-1
    carry = 0

    result = ""

    while(ia >= 0 || ib >= 0)
        ca = ia >= 0 ? a[ia].to_i : 0
        cb = ib >= 0 ? b[ib].to_i : 0

        sum = ca + cb + carry
        carry = sum > 1 ? 1 : 0

        result = (sum > 1 ? (sum % 2) : sum).to_s + result

        ia -= 1
        ib -= 1
    end

    (carry > 0) ? carry.to_s + result : result
end