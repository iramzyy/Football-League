//
//  TeamDetailsInteractor.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import Foundation

// MARK: TeamDetails Interactor -

class TeamDetailsInteractor: TeamDetailsInteractorInputProtocol {
    
    weak var presenter: TeamDetailsInteractorOutputProtocol?
    var networkManager: AlamofireManager
    
    init(networkManager: AlamofireManager) {
        self.networkManager = networkManager
    }
    
    func getTeamDetails(teamId: Int) {
        networkManager.callRequest(TeamDetailsModel.self, endpoint: TeamDetailsEndpoint.teamDetails(id: teamId)) {[weak self] (result) in
            switch result {
            case .success(let value):
                self?.presenter?.didGetTeamDetailsSuccessfully(model: value)
            case .failure(let error):
                self?.presenter?.didFailWithError(error: error.localizedDescription)
            }
        }
    }
    
}
