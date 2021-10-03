//
//  File.swift
//  
//
//  Created by Melih Bugra Esmek on 27.09.2021.
//

import Foundation

public enum Decoders {
    
    static let dateDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateformatter)
        return decoder
    }()
}
