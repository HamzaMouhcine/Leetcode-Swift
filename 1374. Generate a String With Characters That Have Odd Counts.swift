class Solution {
    func generateTheString(_ n: Int) -> String {
        var str = String()
        if n%2 == 0 { str.append("a") }
        
        while str.count < n { str.append("b") }
        
        return str
    }
}