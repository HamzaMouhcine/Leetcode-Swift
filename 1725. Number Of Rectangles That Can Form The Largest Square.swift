class Solution {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        var cnt = 0,
            largest = 0
        
        for rectangle in rectangles {
            let l = min(rectangle[0], rectangle[1])
            if largest < l {
                largest = l
                cnt = 1
            } else if largest == l { cnt += 1 }
        }
        
        return cnt
    }
}