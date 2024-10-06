//
//  Bottle.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

import Foundation

public struct Bottle: Hashable, Codable, Sendable, Equatable {
    
    public struct Configuration: Hashable, Codable, Sendable, Equatable {
        
        public let rebuild: Int
        
        public let root_url: URL
        
        public let files: Files
        
    }
    
    public let stable: Configuration
    
}

