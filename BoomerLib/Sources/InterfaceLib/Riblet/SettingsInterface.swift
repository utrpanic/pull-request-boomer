import ModernRIBs

public protocol SettingsDependency: Dependency, HasDependencyProvider {
    
}

public protocol SettingsBuildable: Buildable {
    func build(withListener listener: SettingsListener) -> SettingsRouting
}

public protocol SettingsInteractable: Interactable {
    var router: SettingsRouting? { get set }
    var listener: SettingsListener? { get set }
}

public protocol SettingsViewControllable: ViewControllable {
    
}

public protocol SettingsRouting: ViewableRouting {
    
}

public protocol SettingsListener: AnyObject {
    
}
