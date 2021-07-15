//
//  TeamsPresenter.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import Foundation

// MARK: Teams Presenter -

class TeamsPresenter: TeamsPresenterProtocol, TeamsInteractorOutputProtocol {
  
    weak var view: TeamsViewProtocol?
    private let interactor: TeamsInteractorInputProtocol
    private let router: TeamsRouterProtocol
    
    
    var teamsCount: Int {
        return teams.count
    }
    
    private var teams: [Team] = []
    
    init(view: TeamsViewProtocol, interactor: TeamsInteractorInputProtocol, router: TeamsRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func viewDidLoad() {
        view?.showActivityIndicator()
        getLeagueTeams()
    }
    
    func getLeagueTeams() {
        interactor.getLeagueTeams()
    }
    
    func configureCell(cell: TeamTableViewCell, indexPath: IndexPath) {
        let teamImageURL = teams[indexPath.row].crestURL
        let teamName = teams[indexPath.row].name
        cell.configureCellWith(teamImageURL: teamImageURL, teamName: teamName)
    }
    
    func didSelectTeam(at indexPath: IndexPath) {
        
    }
    
    func didGetTeamsSuccessfully(model: TeamsModel) {
        view?.hideActivityIndicator()
        teams.append(contentsOf: model.teams)
        view?.reloadData()
        
    }
    
    func didFailWithError(error: String) {
        view?.hideActivityIndicator()
        view?.showErrorMessage(error: error)
    }
}
