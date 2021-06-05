import SafariServices
import SwiftUI

import Service

class LoginController: UIHostingController<LoginView>, LoginViewListener {
    
    var service: AuthService = AuthService(api: AuthApi())
    
    override init(rootView: LoginView) {
        super.init(rootView: rootView)
        self.rootView.listener = self
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LoginViewListener
    func loginViewLoginTapped() {
        let loginUrl = self.service.loginUrl
        UIApplication.shared.open(loginUrl, completionHandler: nil)
    }    
}
