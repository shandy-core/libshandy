//
//  Variation.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

import Foundation

public enum Variation: String, Codable, Sendable, Hashable, Equatable {
    
    // MARK: Universal
    case all
    
    // MARK: Apple Silicon Macs
    case arm64_sequoia
    case arm64_sonoma
    case arm64_ventura
    case arm64_monterey
    case arm64_big_sur
    
    // MARK: Intel Macs
    case sequoia
    case sonoma
    case ventura
    case monterey
    case big_sur
    case catalina
    case mojave
    case high_sierra
    case sierra
    case el_capitan
    
    // MARK: Linux
    case x86_64_linux
    case arm64_linux
    
    // MARK: Catch for future versions
    case other
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)
        let str = Self.init(rawValue: string) ?? .other
        self = str
    }
    
    public static var recommended: Variation {
        variations.recommended
    }
    
    public static var current: Variation {
        let variations = variations
        return variations.current ?? variations.recommended
    }
    
    private static var variations: (recommended: Variation, current: Variation?) {
        #if arch(arm64)
        let arm64 = true
        #else
        let arm64 = false
        #endif
        #if os(Linux)
        return arm64 ? .arm64_linux : .x86_64_linux
        #else
        let version = ProcessInfo.processInfo.operatingSystemVersion
        return {
            switch version.majorVersion {
            case 15:
                (arm64 ? .arm64_sequoia : .sequoia, nil)
            case 14:
                (arm64 ? .arm64_sonoma : .sonoma, nil)
            case 13:
                (arm64 ? .arm64_ventura : .ventura, nil)
            case 12:
                (arm64 ? .arm64_monterey : .monterey, nil)
            case 11:
                (arm64 ? .arm64_big_sur : .big_sur, nil)
            case 10:
                switch version.minorVersion {
                case 15:
                    (.catalina, nil)
                case 14:
                    (.mojave, nil)
                case 13:
                    (.high_sierra, nil)
                case 12:
                    (.sierra, nil)
                case 11:
                    (.el_capitan, nil)
                default:
                    (.el_capitan, .other)
                }
            default:
                (arm64 ? .arm64_sequoia : .sequoia, .other)
            }
        }()
        #endif
    }

}
