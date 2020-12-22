def calc_d(root)
    return 0 if(root.nil?)

    l = 1 + calc_d(root.left)
    r = 1 + calc_d(root.right)
    d = l + r - 2

    @max_diameter = d if(d > @max_diameter)

    [l,r].max
end

def diameter_of_binary_tree(root)
    @max_diameter = 0

    calc_d(root)

    @max_diameter
end
