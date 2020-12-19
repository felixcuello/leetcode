# @param {String} s
# @return {Integer}

def first_uniq_char(s)
    chars = []
    freq = {}
    pos = {}

    for i in (0..s.length-1)
        c = s[i]
        unless freq.has_key?(c)
            chars << c
            freq[c] = 0
            pos[c] = i
        end
        freq[c] += 1
    end

    chars.each_with_index do |c,i|
        return pos[c] if freq[c] == 1
    end

    -1
end