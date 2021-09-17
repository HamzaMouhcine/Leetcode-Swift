class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var evenDigits = 0
        
        for num in nums {
            var tmp = num,
                cnt = 0
            
            while tmp != 0 { tmp /= 10; cnt += 1}
            evenDigits += 1 - cnt%2
        }
        
        return evenDigits
    }
}