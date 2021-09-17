class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var image = image
        for i in 0..<image.count {
            let n = image[i].count
            for j in 0..<(n+1)/2 {
                (image[i][j], image[i][n-j-1]) = (image[i][n-j-1], image[i][j])
                image[i][j] = 1-image[i][j]
                if j != n-j-1 { image[i][n-j-1] = 1-image[i][n-j-1] }
            }
        }
        
        return image
    }
}