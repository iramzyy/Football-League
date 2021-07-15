//
//  TeamsInteractor.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import Foundation

// MARK: Teams Interactor -

class TeamsInteractor: TeamsInteractorInputProtocol {

    weak var presenter: TeamsInteractorOutputProtocol?
    var networkManager: AlamofireManager
    
    init(networkManager: AlamofireManager) {
        self.networkManager = networkManager
    }
    
    func getLeagueTeams() {
        networkManager.callRequest(TeamsModel.self, endpoint: TeamsEndpoint.getTeams) {[weak self] (result) in
            switch result {
            case .success(let value):
                self?.presenter?.didGetTeamsSuccessfully(model: value)
            case .failure(let error):
                self?.presenter?.didFailWithError(error: error.localizedDescription)
            }
        }
    }
}
