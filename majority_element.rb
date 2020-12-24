def majority_element(nums)
    freq = Hash.new(0)
    max_freq = 0
    max_e = 0
    nums.each do |n|
        freq[n] += 1
        if freq[n] > max_freq
            max_freq = freq[n]
            max_e = n
        end
    end
    max_e
end