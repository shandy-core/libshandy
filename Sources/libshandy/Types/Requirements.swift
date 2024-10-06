//
//  Requirements.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//

import Foundation

public struct Requirements: Codable, Hashable, Sendable, Equatable {
    
    public let name: String
    
    public let version: String?
    
    public let contexts: [String]
    
    public let specs: [String]
    
    public init(from decoder: any Decoder) throws {
        if let container = try? decoder.container(keyedBy: CodingKeys.self) {
            self.name = try container.decode(String.self, forKey: .name)
            self.version = try container.decodeIfPresent(String.self, forKey: .version)
            self.contexts = try container.decode([String].self, forKey: .contexts)
            self.specs = try container.decode([String].self, forKey: .specs)
        } else{
            let container = try decoder.singleValueContainer()
            if let string = try? container.decode(String.self) {
                self.name = string
            } else {
                self.name = ""
            }
            self.version = nil
            self.contexts = []
            self.specs = []
        }
    }
    
}
