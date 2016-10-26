import UIKit

extension Data {
    
    // Updated for Swift 3
    func scanValue<T>(start: Int, length: Int) -> T {
        return self.subdata(in: start..<start+length).withUnsafeBytes { $0.pointee }
    }
    
    // Swift 2 (deprecated) - For comparison
    /*
     func convertNSDataToType<T>() -> T {
     var valueOfType: T!
     getBytes(&valueOfType, length: sizeof(T))
     return valueOfType
     }
     */
}



let data = Data(bytes: [0x01, 0x02, 0x03, 0x04])
let convertedData: Int = data.scanValue(start: 0, length: data.count)
print(convertedData)


