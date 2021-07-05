import ModernRIBs

protocol RootDependency: Dependency {
    
}

final class RootComponent: Component<RootDependency> {

}

protocol RootBuildable: Buildable {
    func build(withListener listener: RootListener) -> RootRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: RootListener) -> RootRouting {
        _ = RootComponent(dependency: self.dependency)
        let viewController = RootViewController()
        let interactor = RootInteractor()
        interactor.listener = listener
        return RootRouter(interactor: interactor, viewController: viewController)
    }
}
