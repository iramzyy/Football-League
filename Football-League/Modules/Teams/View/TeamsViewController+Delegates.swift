//
//  TeamsViewController+Delegates.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import UIKit
import SKActivityIndicatorView
import NotificationBannerSwift

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
        let banner = NotificationBanner(title: "Something went wrong", subtitle: error,  style: .danger)
        banner.show()
    }
}
