class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {
        let abc = Array("abcdefghijklmnopqrstuvwxyz")
        var map = [Character: Int]()
        for i in 0..<26 { map[abc[i]] = i+1 }
        
        var coordinates = coordinates,
            first = map[coordinates.removeFirst()]!,
            second = Int(String(coordinates.removeFirst()))!
    
        return (first+second)%2 == 1
    }
}