//
//  File.swift
//  GetRepositoriosTeste
//
//  Created by Glayce on 01/04/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import Foundation

struct Repos: Codable {
    let name: String?
    let description: String?
    let language: String?
}

struct Usuarios: Codable {
    let login: String
    let email: String?
    let avatar_url: String
}
