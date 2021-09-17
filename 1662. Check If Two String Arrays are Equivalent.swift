class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var str1 = word1.joined(),
            str2 = word2.joined()
        
        return str1 == str2
    }
}