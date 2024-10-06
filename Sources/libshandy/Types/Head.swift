//
//  Head.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

import Foundation

public struct Head: Hashable, Codable, Sendable, Equatable {
    
    public let url: URL
    
    public let branch: String?
    
    public let using: String?
    
}
