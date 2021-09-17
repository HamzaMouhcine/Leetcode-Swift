class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var negNumbers = 0,
            n = grid.count,
            m = grid[0].count,
            i = n-1,
            j = 0
        
        while i >= 0 && j < m {
            if grid[i][j] >= 0 { j += 1 }
            else { negNumbers += m-j; i -= 1 }
        }
        
        return negNumbers
    }
}