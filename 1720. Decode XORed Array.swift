class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var decoded = [Int](repeating: first, count: encoded.count+1)
        
        for (idx, num) in encoded.enumerated() {
            decoded[idx+1] = decoded[idx]^num
        }
        
        return decoded
    }
}