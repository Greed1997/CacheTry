//
//  NetworkManager.swift
//  CacheJokes
//
//  Created by Александр on 29.09.2022.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}
class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchData(from url: String, completion: @escaping (Result<Joke, NetworkError>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(.invalidURL))
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            do {
                let joke = try JSONDecoder().decode(Joke.self, from: data)
                completion(.success(joke))
            } catch {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
    
    private init() {}
}
