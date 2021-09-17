class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        let n = mat.count
        var sum = 0
        
        for i in 0..<n {
            sum += mat[i][i]
            if n-i-1 != i { sum += mat[i][n-i-1] }
        }
        
        return sum
    }
}