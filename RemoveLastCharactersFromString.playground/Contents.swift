var str = "Hello, playground"

extension String {
    
    mutating func removeLastCharacters(numberOfCharacters: Int) {
        let startIndex = str.index(str.startIndex, offsetBy: characters.count-numberOfCharacters)
        let endIndex = str.index(str.startIndex, offsetBy: characters.count-1)
        let range = startIndex...endIndex
        removeSubrange(range)
    }
    
}

str.removeLastCharacters(numberOfCharacters: 4)
