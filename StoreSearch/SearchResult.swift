//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Katellyn Hyker on 2/18/22.
//

import Foundation

class ResultArray: Codable {
    var resultCount = 0
    var results = [SearchResult]()
    
}

class SearchResult: Codable, CustomStringConvertible {
    var artistName: String? = ""
    var trackName: String? = ""
    var name: String {
        return trackName ?? ""
    }
    var description: String {
        return "\nResult - Kind:   \(kind ?? "None"), Name: \(name), Artist Name: \(artistName ?? "None")"
    }
    var kind: String? = ""
    var trackPrice: Double? = 0.0
    var currency = ""
    var imageSmall = ""
    var imageLarge = ""
    var storeURL: String? = ""
    var  genre = ""
    
    enum CodingKeys: String, CodingKey {
        case imageSmall = "artworkUrl60"
        case imageLarge = "artworkUrl100"
        case storeURL = "trackViewUrl"
        case genre = "primaryGenreName"
        case kind, artistName, trackName
        case trackPrice, currency
    }
}
