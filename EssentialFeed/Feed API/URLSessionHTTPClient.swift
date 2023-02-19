//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Tsz Lung on 29/11/2022.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresentation: Error {}
    
    public func get(from url: URL, completion: @escaping (HTTPClient.Result) -> Void) {
        session.dataTask(with: url) { data, response, error in
            completion(Result {
                if let error {
                   throw error
                } else if let data, let respons = response as? HTTPURLResponse {
                    return (data, respons)
                } else {
                    throw UnexpectedValuesRepresentation()
                }
            })
        }.resume()
    }
}
