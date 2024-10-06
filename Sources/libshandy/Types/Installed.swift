//
//  Installed.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//

import Foundation

public struct Installed: Codable, Hashable, Equatable, Sendable {
    
    public let version: String
    
    public let built_as_bottle: Bool
    
    public let poured_from_bottle: Bool
    
    public let time: Int
    
    public let runtime_dependencies: [RuntimeDependencies]
    
    public let installed_as_dependency: Bool
    
    public let installed_on_request: Bool
    
    public struct RuntimeDependencies: Codable, Hashable, Equatable, Sendable {
        
        public let full_name: String
        
        public let version: String
        
        public let revision: Int
        
        public let pkg_version: String
        
        public let declared_directly: Bool
        
    }
    
}
