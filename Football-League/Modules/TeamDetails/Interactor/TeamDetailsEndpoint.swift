//
//  TeamDetailsEndpoint.swift
//  Football-League
//
//  Created by Ramzy on 15/07/2021.
//

import Foundation
import Alamofire

enum TeamDetailsEndpoint: Endpoint {

    case teamDetails(id: Int)
    
    var path: String {
        switch self {
        case .teamDetails(let id):
            return "teams/\(id)"
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
        case .teamDetails:
            return .get
        }
    }
    
}
