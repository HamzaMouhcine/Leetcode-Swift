class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var minTime = 0
        
        for i in 0..<points.count-1 {
            minTime += timeToMove(points[i], points[i+1])
        }
        
        return minTime
    }
    
    func timeToMove(_ A: [Int], _ B: [Int]) -> Int {
        var horizontal = abs(A[0] - B[0]),
            vertical = abs(A[1] - B[1])
        
        return max(horizontal, vertical)
    }
}