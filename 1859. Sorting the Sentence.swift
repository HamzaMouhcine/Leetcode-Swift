class Solution {
    func sortSentence(_ s: String) -> String {
        var split = s.split(separator: " ")
        var sorted = [Substring](repeating: "", count: split.count)
        
        for i in 0..<split.count {
            sorted[Int(split[i].suffix(1))! - 1] = split[i].prefix(split[i].count-1)
        }
        
        return sorted.joined(separator: " ")
    }
}