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

class SearchResult: Codable {
    var artistName: String? = ""
    var trackName: String? = ""
    var name: String {
        return trackName ?? ""
    }
}
