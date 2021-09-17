class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var steps = 0,
            num = num
        
        while num != 0 {
            steps += 1
            switch num%2 {
            case 0:
                num /= 2
                break
            case 1:
                num -= 1
                break
            default:
                break
            }
        }
        
        return steps
    }
}