//
//  TeamDetailsModel.swift
//  Football-League
//
//  Created Ramzy on 15/07/2021.
//

import Foundation

// MARK: TeamDetails Model -

struct TeamDetailsModel: Codable {
    let id: Int
    let name: String
    let crestURL: String
    let address, phone: String
    let website: String
    let email: String
    let venue: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case crestURL = "crestUrl"
        case address, phone, website, email, venue
    }
}

