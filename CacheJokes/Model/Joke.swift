//
//  File.swift
//  CacheJokes
//
//  Created by Александр on 29.09.2022.
//

import Foundation

struct Joke: Decodable {
    let category: String
    let setup: String
    let delivery: String
}
let link = "https://v2.jokeapi.dev/joke/Any?safe-mode"
