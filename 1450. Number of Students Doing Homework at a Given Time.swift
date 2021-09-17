class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        rec(startTime, endTime, queryTime, 0)
    }
    
    func rec(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int, _ i: Int) -> Int {
        if i == startTime.count { return 0 }
        
        return rec(startTime, endTime, queryTime, i+1) +
            ((startTime[i] <= queryTime && endTime[i] >= queryTime) ? 1 : 0)
    }
}