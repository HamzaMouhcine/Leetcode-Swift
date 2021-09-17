class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        
        for word in words {
            var consistent = true
            for c in word {
                if !allowed.contains(c) { consistent = false }
            }
            if consistent { count += 1 }
        }
        
        return count
    }
}