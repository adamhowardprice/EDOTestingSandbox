import Foundation

@objc
public protocol RemotePersonProtocol {
    func sayMyName() -> String
}

@objc
public protocol StubbedPersonExtension {
    func remoteProtocol() -> RemotePersonProtocol
}

@objc
extension StubbedPerson : StubbedPersonExtension {
  public func remoteProtocol() -> RemotePersonProtocol {
    return Person()
  }
}
