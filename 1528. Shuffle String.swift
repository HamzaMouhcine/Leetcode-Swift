class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var char_array = [Character](repeating: "a", count: indices.count)
        
        for (idx, c) in s.enumerated() {
            char_array[indices[idx]] = c
        }
        
        return String(char_array)
    }
}