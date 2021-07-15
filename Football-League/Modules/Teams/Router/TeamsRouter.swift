//
//  TeamsRouter.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import UIKit

// MARK: Teams Router -

class TeamsRouter: TeamsRouterProtocol {
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let view =  TeamsViewController()

        let interactor = TeamsInteractor(networkManager: AlamofireManager())
        let router = TeamsRouter()
        let presenter = TeamsPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
    
    func routeToTeamDetails(teamId: Int) {
        let teamDetailsViewController = TeamDetailsRouter.createModule(teamId: teamId)
        viewController?.navigationController?.pushViewController(teamDetailsViewController, animated: true)
    }
}
