@one = [
    ['I', 1],
    ['V', 5],
    ['X', 10],
    ['L', 50],
    ['C', 100],
    ['D', 500],
    ['M', 1000]
]

@two = [
    ['IV', 4],
    ['IX', 9],
    ['XL', 40],
    ['XC', 90],
    ['CD', 400],
    ['CM', 900],
    ['II' => 2],
    ['XX' => 20],
    ['CC' => 200],
    ['MM' => 2000]
]

@three = [
    ['III' => 3],
    ['XXX' => 30],
    ['CCC' => 300],
    ['MMM' => 3000]
]

def roman_to_int(s)
    total = 0
    sl = s.length
    i = 0
    while i < sl
        found = false
        if s[i..-1].length > 2
            @three.each do |m|
                if s[i] == m[0][0] && s[i+1] == m[0][1] && s[i+2] == m[0][2]
                    total += m[1]
                    i += 3
                    found = true
                    break
                end
            end
        end

        next if found

        if s[i..-1].length > 1
            @two.each do |m|
                if s[i] == m[0][0] && s[i+1] == m[0][1]
                    total += m[1]
                    i += 2
                    found = true
                    break
                end
            end
        end

        next if found

        @one.each do |m|
            if s[i] == m[0]
                total += m[1]
                i += 1
                found = true
            end
        end

        puts "WRONG" if not found
    end

    total
end