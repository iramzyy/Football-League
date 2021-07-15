//
//  TeamsEndpoint.swift
//  Football-League
//
//  Created by Ramzy on 15/07/2021.
//

import Foundation
import Alamofire

enum TeamsEndpoint: Endpoint {
    case getTeams
    
    var path: String {
        switch self {
        case .getTeams:
            return "competitions/2021/teams"
        }
    }
    
    var headers: HTTPHeaders {
        let headers = defaultHeaders
        return headers
    }
    
    var parameters: Parameters?{
        let param = defaultParams
        return param
    }
    
    var method: HTTPMethod {
        switch self {
        case .getTeams:
            return .get
        }
    }
}
