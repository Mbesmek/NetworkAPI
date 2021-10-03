//
//  File.swift
//  
//
//  Created by Melih Bugra Esmek on 27.09.2021.
//

import Foundation

public struct PopularMovieResponse: Decodable {
   
    public let results: [Movie]
    
    private enum RootCodingKeys: String, CodingKey {
        case results
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: RootCodingKeys.self)
        self.results = try container.decode([Movie].self, forKey: .results)
    }
}
