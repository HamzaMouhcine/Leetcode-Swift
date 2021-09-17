class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var weirdNumbers = [Int]()
        
        for i in left...right {
            var tmp = i,
                weird = true
            while tmp != 0 {
                if tmp%10 == 0 || i%(tmp%10) != 0 {
                    weird = false
                    break
                }
                tmp /= 10
            }
            if weird { weirdNumbers.append(i) }
        }
        
        return weirdNumbers
    }
}