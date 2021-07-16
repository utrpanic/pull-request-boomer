import InterfaceLib
import ModernRIBs

final class SettingsRouter: ViewableRouter<SettingsInteractable, SettingsViewControllable>, SettingsRouting {

    override init(interactor: SettingsInteractable, viewController: SettingsViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
