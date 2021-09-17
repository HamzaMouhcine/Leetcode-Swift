class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var merged = String(),
            word1array = Array(word1),
            word2array = Array(word2)
        
        for i in 0..<max(word1.count, word2.count) {
            if i < word1.count { merged.append(word1array[i]) }
            if i < word2.count { merged.append(word2array[i]) }
        }
        
        return merged
    }
}