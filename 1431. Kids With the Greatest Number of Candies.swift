class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max_candies = candies.max()!;
        
        var fat_kid = [Bool]()
        for candies_number in candies {
            if candies_number+extraCandies >= max_candies {
                fat_kid.append(true)
            } else {
                fat_kid.append(false)
            }
        }
        
        return fat_kid
    }
}