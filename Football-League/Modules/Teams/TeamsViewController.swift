//
//  TeamsViewController.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import UIKit

class TeamsViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var teamsTableView: UITableView!
    
	var presenter: TeamsPresenterProtocol!

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        setupUI()
        setupTableView()
    }
    
    private func setupUI() {
        navigationController?.navigationBar.isHidden = true
        containerView.clipsToBounds = false
        containerView.layer.cornerRadius = 20
        containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    private func setupTableView() {
        teamsTableView.dataSource = self
        teamsTableView.delegate = self
        teamsTableView.registerCellNib(cellClass: TeamTableViewCell.self)
    }
}


extension TeamsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.teamsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as TeamTableViewCell
        presenter.configureCell(cell: cell, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
