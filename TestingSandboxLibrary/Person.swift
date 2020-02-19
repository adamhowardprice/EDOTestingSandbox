import Foundation

public class Person: NSObject, RemotePersonProtocol {
    
    let firstName = "Adam"
    let lastName = "Price"
    var value: Int = 0
    
    override init() {}
    
    public init(value: Int) {
        self.value = value
    }
    
    public func sayMyName() -> String {
        return "My name is \(firstName) \(lastName), my value is \(value)"
    }
}
