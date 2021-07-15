//
//  TeamDetailsViewController+Delegates.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import UIKit
import SKActivityIndicatorView
import NotificationBannerSwift

extension TeamDetailsViewController: TeamDetailsViewProtocol {
    func setTeamDetails(data: TeamDetailsModel) {
        teamImage.sd_setImage(with: URL(string: data.crestURL))
        teamNameLabel.text = data.name
        locationLabel.text = data.address
        phoneLabel.text = data.phone
        emailLabel.text = data.email
        websiteLabel.text = data.website
        venueLabel.text = data.venue
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
