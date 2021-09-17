class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var digit_product = 1,
            digit_sum     = 0,
            n = n
        
        while n != 0 {
            digit_sum += n%10
            digit_product *= n%10
            n /= 10
        }
        
        return digit_product - digit_sum
    }
}