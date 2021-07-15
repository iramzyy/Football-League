//
//  TeamsViewController+Delegates.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import UIKit
import SKActivityIndicatorView

extension TeamsViewController: TeamsViewProtocol {
    func reloadData() {
        teamsTableView.reloadData()
    }
    
    func showActivityIndicator() {
        SKActivityIndicator.show("Loading")
    }
    
    func hideActivityIndicator() {
        SKActivityIndicator.dismiss()
    }
    
    func showErrorMessage(error: String) {
        print(error)
    }
    
    
}
