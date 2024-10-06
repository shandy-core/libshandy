//
//  Variations.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//

import Foundation

public struct Variations: Codable, Hashable, Equatable, Sendable {
    
    private let files: [Variation: _Variation]
        
    public struct _Variation: Codable, Hashable, Equatable, Sendable {
        
        public let dependencies: [String]?
        
        public let conflicts_with: [String]?
        
        public let conflicts_with_reasons: [String]?
        
        public let requirements: Requirements?
        
        public let build_depenedencies: [String]?
        
        public let caveats: String?
        
        public let test_depenedencies: [String]?
        
        public let keg_only: Bool?
        
        public let keg_only_reason: KegOnlyReason?
        
        public let head_dependencies: HeadDependencies?
        
        public struct KegOnlyReason: Codable, Hashable, Equatable, Sendable {
            
            public let explanation: String
            
            public let reason: String
            
        }
        
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)
        var tempFiles: [Variation: _Variation] = [:]
        for key in container.allKeys {
            let variation = Variation(rawValue: key.stringValue) ?? .all
            let file = try container.decode(_Variation.self, forKey: key)
            tempFiles[variation] = file
        }
        self.files = tempFiles
    }
    
    public subscript(variation: Variation) -> _Variation? {
        files[variation]
    }
    
    fileprivate struct StringCodingKey: CodingKey {
        
        var stringValue: String
        var intValue: Int?

        init?(stringValue: String) {
            self.stringValue = stringValue
        }

        init?(intValue: Int) {
            return nil
        }
        
    }
    
}
