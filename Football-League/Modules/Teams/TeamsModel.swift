//
//  TeamsModel.swift
//  Football-League
//
//  Created Ramzy on 14/07/2021.
//

import Foundation

// MARK: Teams Model -
struct TeamsModel: Codable {
    let teams: [Team]
}

// MARK: - Team
struct Team: Codable {
    let id: Int
    let name, shortName: String
    let crestURL: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, shortName
        case crestURL = "crestUrl"
    }
}

