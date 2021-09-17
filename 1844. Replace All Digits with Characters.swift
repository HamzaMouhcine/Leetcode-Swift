class Solution {
    func replaceDigits(_ s: String) -> String {
        var replaced = String()
        
        var last: Character = Character("a")
        for (idx, c) in s.enumerated() {
            if idx%2 == 1 {
                replaced.append(Character(UnicodeScalar(Int(String(c))! + Int(exactly:last.asciiValue!)!)!))
            } else { 
                replaced.append(c) 
                last = c
            }
        }
        
        return replaced
    }
}