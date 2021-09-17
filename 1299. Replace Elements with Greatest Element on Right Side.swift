class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var arr = arr,
            curMax = -1
        
        for i in (0..<arr.count).reversed() {
            (arr[i], curMax) = (curMax, max(curMax, arr[i]))
        }
        
        return arr
    }
}