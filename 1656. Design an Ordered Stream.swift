class OrderedStream {
    var list: [String],
        used: [Bool],
        n: Int
    
    init(_ n: Int) {
        self.list = [String](repeating: "", count: n)
        self.used = [Bool](repeating: false, count: n)
        self.n = n
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        var new_chunk = [String](),
            idKey = idKey - 1
        
        list[idKey] = value
        if idKey == 0 || self.used[idKey-1] {
            while idKey < n && self.list[idKey] != "" {
                new_chunk.append(self.list[idKey])
                self.used[idKey] = true
                idKey += 1
            }
        }
        
        return new_chunk
    }
}

/**
 * Your OrderedStream object will be instantiated and called as such:
 * let obj = OrderedStream(n)
 * let ret_1: [String] = obj.insert(idKey, value)
 */