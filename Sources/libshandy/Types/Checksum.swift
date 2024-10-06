//
//  Checksuk.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//

import Foundation

public struct Checksum: Codable, Hashable, Equatable, Sendable {
    
    public let sha256: String
    
    public static func ==(lhs: Checksum, rhs: String) -> Bool {
        lhs.sha256 == rhs
    }
    
}
