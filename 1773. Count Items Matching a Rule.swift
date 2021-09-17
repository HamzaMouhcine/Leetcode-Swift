class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var count = 0
        
        var rule = 0
        if ruleKey == "color" { rule = 1 }
        else if ruleKey == "name" { rule = 2}
        
        for item in items {
                if item[rule] == ruleValue { count += 1 }
        }
        
        return count
    }
}