//
//  TeamDetailsViewController.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import UIKit

class TeamDetailsViewController: UIViewController {
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var venueLabel: UILabel!
    
	var presenter: TeamDetailsPresenterProtocol!

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    @IBAction func didTapBack(_ sender: UIButton) {
        presenter.didTapBack()
    }
}
