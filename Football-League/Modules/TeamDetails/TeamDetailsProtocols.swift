//
//  TeamDetailsProtocols.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import Foundation

// MARK: TeamDetails Protocols

protocol TeamDetailsViewProtocol: AnyObject {
    var presenter: TeamDetailsPresenterProtocol! { get set }
    
    func setTeamDetails(data: TeamDetailsModel)
    func showActivityIndicator()
    func hideActivityIndicator()
    func showErrorMessage(error: String)
}

protocol TeamDetailsPresenterProtocol: AnyObject {
    var view: TeamDetailsViewProtocol? { get set }
    
    func viewDidLoad()
    func getTeamDetails(teamId: Int)
    func didTapBack()
}

protocol TeamDetailsRouterProtocol {
    func backToTeamsScreen()
}

protocol TeamDetailsInteractorInputProtocol {
    var presenter: TeamDetailsInteractorOutputProtocol? { get set }
    var networkManager: AlamofireManager {get set}
    
    func getTeamDetails(teamId: Int)
}

protocol TeamDetailsInteractorOutputProtocol: AnyObject {
    func didGetTeamDetailsSuccessfully(model: TeamDetailsModel)
    func didFailWithError(error: String)
}
