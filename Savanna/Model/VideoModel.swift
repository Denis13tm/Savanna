//
//  VideoModel.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/03.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
