import ModelLib
import InterfaceLib
import ModernRIBs

final class AppComponent: Component<EmptyDependency>, MainDependency {
    
    var provider: CommonDependencyProviderProtocol = CommonDependencyProvider()
    
    private var authService = AuthService(api: AuthApi())
    
    var samIsLoggedIn: Bool { self.authService.samIsLoggedIn }

    init() {
        super.init(dependency: EmptyComponent())
    }
}
