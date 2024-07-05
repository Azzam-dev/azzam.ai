//
//  MainCoordinator.swift
//  azzam.ai
//
//  Created by الشيخ عزام on 29/12/1445 AH.
//

import UIKit

final class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //MARK: Initial View Controller
    func start() {
        let navigationVC = NavigationVC.instantiate()
        
        let homeVC = HomeVC.instantiate()
        let chartsVC = ChartsVC.instantiate()
        let projectsVC = ProjectsListVC.instantiate()
        let mainSettingsVC = MainSettingsVC.instantiate()
        
        homeVC.coordinator = self
        chartsVC.coordinator = self
        projectsVC.coordinator = self
        mainSettingsVC.coordinator = self
        
        
        navigationVC.coordinator = self
        navigationVC.viewControllers = [homeVC, chartsVC, projectsVC, mainSettingsVC]
        
        navigationController.pushViewController(navigationVC, animated: false)
    }
    
    
    func viewWorld() {
        let vc = WorldVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    
    //MARK: Home
    func viewPurchase() {
        let vc = PurchaseVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewPalette() {
        let vc = PaletteVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func createNewProject() {
        ReduxStore.dispatch(CreateProjectAction(newProject: Project()))
        let vc = PlaygroundVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    
    //MARK: Main Settings
    func viewCredits() {
        let vc = CreditsVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewAboutUs() {
        let vc = AboutUsVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
    func viewTermsOfUse() {
        let vc = TermsOfUseVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewPrivacyPolicy() {
        let vc = PrivacyPolicyVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewSendFeedback() {
        let vc = SendFeedbackVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewSupport() {
        let vc = SupportVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewHelp() {
        let vc = HelpVC()
        navigationController.present(vc, animated: true)
    }
    
    func viewWhatsNewVC() {
        let vc = WhatsNewVC.instantiate()
        navigationController.present(vc, animated: true)
    }
    
}
