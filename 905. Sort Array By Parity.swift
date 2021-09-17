class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var sorted = [Int]()
        
        for num in nums {
            if num%2 == 0 { sorted.append(num) }
        }
        
        for num in nums {
            if num%2 == 1 { sorted.append(num) }
        }
        
        return sorted
    }
}