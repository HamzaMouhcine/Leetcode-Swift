class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0,
            n = arr.count
        
        for i in 0..<n {
            var lOdd = (i+2)/2,
                lEven = (i+1)/2,
                rOdd = (n-i+1)/2,
                rEven = (n-i)/2
            
            sum += (lOdd * rOdd + lEven * rEven) * arr[i]
        }
        
        return sum
    }
}