class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var max = 0,
            secondMax = 0
        
        for num in nums {
            if num > max { (max, secondMax) = (num, max) }
            else if num > secondMax { secondMax = num }
        }
        
        return (max-1) * (secondMax-1)
    }
}