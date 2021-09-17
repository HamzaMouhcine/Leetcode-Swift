class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var sum = 0,
            n = n
        
        while n != 0 {
            sum += n%k
            n /= k
        }
        
        return sum
    }
}