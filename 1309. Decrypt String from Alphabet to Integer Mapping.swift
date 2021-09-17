class Solution {
    func freqAlphabets(_ s: String) -> String {
        var decrypted = String()
        var map: [String: String] = ["1":"a","2":"b","3":"c","4":"d","5":"e","6":"f","7":"g","8":"h","9":"i","10":"j","11":"k","12":"l","13":"m","14":"n","15":"o","16":"p","17":"q","18":"r","19":"s","20":"t","21":"u","22":"v","23":"w","24":"x","25":"y","26":"z"]
        
        var idx = s.startIndex,
            n = s.count,
            i = 0
        while idx != s.endIndex {
            var next = String()
            next.append(s[idx])
            if i+2 < n && s[s.index(idx, offsetBy: 2)] == "#" {
                next.append(s[s.index(idx, offsetBy: 1)])
                idx = s.index(idx, offsetBy: 2)
                i += 2
            }
            
            
            decrypted.append(map[next] ?? "")
            idx = s.index(after: idx)
            i += 1
        }
        
        return decrypted
    }
}