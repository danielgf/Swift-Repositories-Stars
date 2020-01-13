//
//  NetworkingManager.swift
//  Networking
//
//  Created by Daniel Griso Filho on 11/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public struct NetworkingManager {
    
    public static let shared = NetworkingManager()
   
    public func requestRepositories(for page: Int,completion: @escaping (Result<Payload, Error>) -> ()) {
        guard let url = URL(string: "https://api.github.com/search/repositories?q=language=swift&sort=star&page=\(page)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { completion(.failure(error!)); return }
            
            do {
                let vehicles = try JSONDecoder().decode(Payload.self, from: data)
                completion(.success(vehicles))
            } catch {
                completion(.failure(error))
            }
            
        }.resume()
    }
}
