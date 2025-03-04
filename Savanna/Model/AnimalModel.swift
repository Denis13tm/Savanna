//
//  AnimalModel.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/03.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
