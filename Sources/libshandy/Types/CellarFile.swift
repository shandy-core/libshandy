//
//  CellarFiles.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

import Foundation

public struct CellarFile: Hashable, Codable, Sendable, Equatable {
    
    public let cellar: String
    
    public let url: URL
    
    public let sha256: String
    
}
