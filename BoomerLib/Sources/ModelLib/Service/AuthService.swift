import UIKit

import InterfaceLib

public final class AuthService {
    
    let api: AuthApiProtocol
    
    public var samIsLoggedIn: Bool { self.api.authToken != nil }
    
    public init(api: AuthApiProtocol) {
        self.api = api
    }
    
    public func login() {
        self.api.login()
    }
    
    public func logout() {
        self.api.authToken = nil
    }
    
    public func handleLoginSuccess(url: URL) -> Bool {
        let urlComponents = URLComponents(string: url.absoluteString)
        guard urlComponents?.scheme == "boomer" else { return false }
        guard urlComponents?.host == "login" else { return false }
        let quries = urlComponents?.queryItems ?? []
        let authToken = quries.filter { $0.name == "code" }.first?.value
        self.api.authToken = authToken
        return true
    }
}
