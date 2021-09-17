class Solution {
    func sumZero(_ n: Int) -> [Int] {
        var arr = [Int]()
        if n%2 == 1 { arr.append(0) }
        if n == 1 { return arr }
        
        for i in 1...n/2 {
            arr.append(i)
            arr.append(-i)
        }
        
        return arr
    }
}