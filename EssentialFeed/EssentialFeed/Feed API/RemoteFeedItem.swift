//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 27/12/2022.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
