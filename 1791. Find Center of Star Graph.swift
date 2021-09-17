class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        var edge1 = edges[0],
            edge2 = edges[1]
        if edge1[0] == edge2[0] || edge1[0] == edge2[1] {
            return edge1[0]
        } else {
            return edge1[1]
        }
    }
}