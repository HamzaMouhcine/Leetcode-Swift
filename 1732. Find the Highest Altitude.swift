class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var highestAltitude = 0,
            cur = 0
        
        for diff in gain {
            cur += diff
            highestAltitude = max(highestAltitude, cur)
        }
        
        return highestAltitude
    }
}