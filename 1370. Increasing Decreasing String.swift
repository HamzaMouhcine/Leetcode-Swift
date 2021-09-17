class Solution {
    func sortString(_ s: String) -> String {
        var result = String()
        var abc = Array("abcdefghijklmnopqrstuvwxyz"),
            cnt = [Int](repeating: 0, count: 26),
            map = [Character: Int]()
        for i in 0..<abc.count { map[abc[i]] = i }
        for c in s { cnt[map[c]!] += 1 }
        
        while result.count != s.count {
            appendToResult(Array(0..<26), abc, &cnt, &result)
            appendToResult(Array((0..<26).reversed()), abc, &cnt, &result)
        }
        
        return result
    }
    
    func appendToResult(_ range: [Int], _ abc: [Character], _ cnt: inout [Int], _ result: inout String) {
        for i in range {
            if cnt[i] != 0 {
                cnt[i] -= 1
                result.append(abc[i])
            }
        }
    }
}