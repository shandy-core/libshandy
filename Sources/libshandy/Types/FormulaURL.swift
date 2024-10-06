//
//  URLs.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

import Foundation

public struct FormulaURL: Hashable, Codable, Sendable, Equatable {
    
    public struct Configuration: Hashable, Codable, Sendable, Equatable {
        
        public let url: URL
        
        public let tag: String?
        
        public let revision: String?
        
        public let using: String?
        
        public let checksum: String?
        
    }
    
    public let stable: Configuration
    
    public let head: Head?
    
}
