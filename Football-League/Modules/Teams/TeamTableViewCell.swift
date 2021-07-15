//
//  TeamTableViewCell.swift
//  Football-League
//
//  Created by Ramzy on 15/07/2021.
//

import UIKit
import SDWebImage

class TeamTableViewCell: UITableViewCell {
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }


    func configureCellWith(teamImageURL: String, teamName: String) {
        teamImage.sd_setImage(with: URL(string: teamImageURL))
        teamNameLabel.text = teamName
    }
}
