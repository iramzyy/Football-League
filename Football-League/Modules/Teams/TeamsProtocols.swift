//
//  TeamsProtocols.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import Foundation

// MARK: Teams Protocols

protocol TeamsViewProtocol: AnyObject {
    var presenter: TeamsPresenterProtocol! { get set }
    
    func reloadData()
    func showActivityIndicator()
    func hideActivityIndicator()
    func showErrorMessage(error: String)
}

protocol TeamsPresenterProtocol: AnyObject {
    var view: TeamsViewProtocol? { get set }
    var teamsCount: Int {get}
    
    func viewDidLoad()
    func getLeagueTeams()
    func configureCell(cell: TeamTableViewCell, indexPath: IndexPath)
    func didSelectTeam(at indexPath: IndexPath)

}

protocol TeamsRouterProtocol {
    func routeToTeamDetails(teamId: Int)
}

protocol TeamsInteractorInputProtocol {
    var presenter: TeamsInteractorOutputProtocol? { get set }
    var networkManager: AlamofireManager {get set}
    
    func getLeagueTeams()
}

protocol TeamsInteractorOutputProtocol: AnyObject {
    func didGetTeamsSuccessfully(model: TeamsModel)
    func didFailWithError(error: String)
}
