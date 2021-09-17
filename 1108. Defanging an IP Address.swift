class Solution {
    func defangIPaddr(_ address: String) -> String {
        var defanged_ip_address = ""
        for c in address {
            if c == "." {
                defanged_ip_address.append("[.]")
            } else {
                defanged_ip_address.append(c)
            }
        }
        
        return defanged_ip_address
    }
}