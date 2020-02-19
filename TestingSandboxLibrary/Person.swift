import Foundation

public class Person: RemotePersonProtocol {
    
    let firstName = "Adam"
    let lastName = "Price"
    
    public init() {}
    
    public func sayMyName() -> String {
        return "My name is \(firstName) \(lastName)"
    }
}
