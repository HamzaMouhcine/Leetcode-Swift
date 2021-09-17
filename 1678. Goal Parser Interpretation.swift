class Solution {
    func interpret(_ command: String) -> String {
        var interpretation = String()
        var chars = Array(command)
        
        for i in 0..<command.count {
            if chars[i] == "G" {
                interpretation.append("G")
            } else if chars[i] == "(" {
                if chars[i+1] == ")" { interpretation.append("o") }
                else { interpretation.append("al") }
            }
        }
        
        return interpretation
    }
}