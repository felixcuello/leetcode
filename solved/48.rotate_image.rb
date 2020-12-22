# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def swap(matrix, ax, ay, bx, by)
    temp = matrix[ay][ax]
    matrix[ay][ax] = matrix[by][bx]
    matrix[by][bx] = temp
end

def rotate(matrix)
    n = matrix.length - 1

    # Transpose
    for row in (0..n)
        for col in (row..n)
            swap(matrix, row, col, col, row)
        end
    end

    # Swap columns
    for col in (0..(n/2))
        for row in (0..n)
            swap(matrix, col, row, n-col, row)
        end
    end
end
