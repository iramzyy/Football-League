//
//  TeamDetailsRouter.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import UIKit

// MARK: TeamDetails Router -

class TeamDetailsRouter: TeamDetailsRouterProtocol {

    weak var viewController: UIViewController?
    
    static func createModule(teamId: Int) -> UIViewController {
        let view =  TeamDetailsViewController()

        let interactor = TeamDetailsInteractor(networkManager: AlamofireManager())
        let router = TeamDetailsRouter()
        let presenter = TeamDetailsPresenter(view: view, interactor: interactor, router: router, teamId: teamId)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
    
    func backToTeamsScreen() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}
