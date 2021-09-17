class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var xor = 0,
            next = start
        
        for i in 0..<n {
            xor ^= next
            next += 2
        }
        
        return xor
    }
}