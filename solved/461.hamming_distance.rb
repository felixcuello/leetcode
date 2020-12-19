# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    ans = 0
    while(x > 0 || y > 0)
        bx = x & 1
        by = y & 1
        ans += (bx == by) ? 0 : 1
        x = x >> 1
        y = y >> 1
    end
    ans
end