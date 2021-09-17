class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var max69 = 0,
            next = 1,
            last = 0,
            num = num
        
        while num != 0 {
            if num%10 == 9 { max69 += next * 9 } 
            else {
                max69 += next * 9
                max69 -= last
                last = 3 * next
            }
            next *= 10
            num /= 10
        }
        
        return max69
    }
}