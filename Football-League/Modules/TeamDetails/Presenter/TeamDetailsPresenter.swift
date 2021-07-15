//
//  TeamDetailsPresenter.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import Foundation

// MARK: TeamDetails Presenter -

class TeamDetailsPresenter: TeamDetailsPresenterProtocol, TeamDetailsInteractorOutputProtocol {


    weak var view: TeamDetailsViewProtocol?
    private let interactor: TeamDetailsInteractorInputProtocol
    private let router: TeamDetailsRouterProtocol
    private let teamId : Int
    
    init(view: TeamDetailsViewProtocol, interactor: TeamDetailsInteractorInputProtocol, router: TeamDetailsRouterProtocol, teamId: Int) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.teamId = teamId
    }

    func viewDidLoad() {
        getTeamDetails(teamId: teamId)
    }
    
    func getTeamDetails(teamId: Int) {
        view?.showActivityIndicator()
        if Reachability.checkConnection() {
            interactor.getTeamDetails(teamId: teamId)
        } else {
            view?.showErrorMessage(error: "Please check your internet connection")
        }       
    }
    
    func didTapBack() {
        router.backToTeamsScreen()
    }
    
    
    func didGetTeamDetailsSuccessfully(model: TeamDetailsModel) {
        view?.hideActivityIndicator()
        view?.setTeamDetails(data: model)
    }
    
    func didFailWithError(error: String) {
        view?.hideActivityIndicator()
        view?.showErrorMessage(error: "Error while getting team details")
    }
}
