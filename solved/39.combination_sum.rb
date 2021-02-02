# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def is_uniq(comb, combs)
    comb_freq = Hash.new(0)
    # counting frequency of combination obtained
    comb.each{|x| comb_freq[x] += 1}

    uniq = true
    combs.each do |v|
        freq = Hash.new(0)
        # counting frequency of combination previously added
        v.each{|x| freq[x] += 1}

        # in case there is present a previous combination equal to the new one
        # it's no need to continue checking
        if comb_freq == freq
            uniq = false
            break
        end
    end
    uniq
end

def combination_sum_dfs(candidates, tmp, prev_comb, combs)
    candidates.each do |c|
        comb = Array.new(prev_comb)
        comb << c
        if tmp - c == 0
            combs << comb if is_uniq(comb, combs)
        else
            combination_sum_dfs(candidates, tmp - c, comb, combs) if tmp - c > 0
        end
    end
end

def combination_sum(candidates, target)
    combs = []
    candidates.each do |c|
        tmp = target - c
        comb = [c]
        if tmp == 0
            combs << comb if is_uniq(comb, combs)
        else
            combination_sum_dfs(candidates, tmp, comb, combs) if tmp > 0
        end
    end
    combs
end
