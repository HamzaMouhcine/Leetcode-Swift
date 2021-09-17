class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var check = 0,
            there = [Int](repeating: 0, count: 26)
        
        for c in sentence {
            let charValue = Int(c.asciiValue! - Character("a").asciiValue!)
            check -= there[charValue]
            there[charValue] = 1
            check += there[charValue]
        }
        
        return check == 26
    }
}