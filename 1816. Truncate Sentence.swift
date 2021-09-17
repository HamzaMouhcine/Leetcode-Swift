class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var words = s.split(separator: " ")
        var truncated = String()
        
        for i in 0..<k {
            if i != 0 { truncated.append(" ") }
            truncated.append(String(words[i]))
        }
        
        return truncated
    }
}