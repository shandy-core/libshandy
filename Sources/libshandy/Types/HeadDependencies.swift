//
//  HeadDependencies.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//


public struct HeadDependencies: Codable, Hashable, Equatable, Sendable {
            
    public let build_dependencies: [String]
    
    public let dependencies: [String]
    
    public let test_dependencies: [String]
    
    public let recommended_dependencies: [String]
    
    public let optional_dependencies: [String]
    
}
