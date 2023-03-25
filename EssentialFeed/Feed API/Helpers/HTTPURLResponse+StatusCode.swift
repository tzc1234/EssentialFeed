//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 25/03/2023.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { 200 }
    
    var isOK: Bool {
        statusCode == Self.OK_200
    }
}
