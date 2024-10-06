//
//  Version.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

public struct Version: Hashable, Codable, Sendable, Equatable {
    
    public let stable: String
    
    public let head: String?
    
    public let bottle: Bool
    
}
