class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        var (a, b) = findMin(nums),
            (c, d) = findMax(nums)
        
        return c*d - a*b
    }
    
    func findMin(_ nums: [Int]) -> (Int, Int) {
        var a = 100000,
            b = 100000
    
        for num in nums {
            if num < a {
                (a, b) = (num, a)
            } else if num < b {
                b = num
            }
        }
        
        return (a, b)
    }
    
    func findMax(_ nums: [Int]) -> (Int, Int) {
        var c = 0,
            d = 0
        for num in nums {
            if num > d {
                (c, d) = (d, num)
            } else if num > c {
                c = num
            }
        }
        
        return (c, d)
    } 
}