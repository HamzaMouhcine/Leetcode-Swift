class Solution {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        var row = [Int](repeating: 0, count: n),
            col = [Int](repeating: 0, count: m)
        
        for idx in indices {
            row[idx[1]] += 1
            col[idx[0]] += 1
        }
        
        var odd = 0
        for i in 0..<n {
            for j in 0..<m {
                odd += (row[i]+col[j])%2
            }
        }
        
        return odd
    }
}