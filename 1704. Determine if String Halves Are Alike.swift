class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        var vowels = Set<Character>(["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]),
            n = s.count
        
        var balance = 0
        for (idx, c) in s.enumerated() {
            if !vowels.contains(c) { continue }
            if idx < n / 2 { balance += 1 }
            else { balance -= 1}
        }
        
        return balance == 0
    }
}