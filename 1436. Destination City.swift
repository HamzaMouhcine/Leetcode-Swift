class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var map = [String: String]()
    
        for path in paths {
            map[path[0]] = path[1]
        }
        
        var destination = paths[0][1]
        while map[destination] != nil { destination = map[destination]! }
        
        return destination
    }
}