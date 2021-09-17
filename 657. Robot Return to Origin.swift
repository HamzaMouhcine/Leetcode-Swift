class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var x = 0,
            y = 0
        
        for c in moves {
            switch c {
            case "U":
                y += 1
                break
            case "D":
                y -= 1
                break
            case "R":
                x += 1
                break
            case "L":
                x -= 1
                break
            default:
                break
            }
        }
        
        return x == 0 && y == 0
    }
}