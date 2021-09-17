class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var matches = 0,
            n = n
        
        while n != 1 {
            matches += n / 2
            n = (n + 1) / 2
        }
        
        return matches
    }
}