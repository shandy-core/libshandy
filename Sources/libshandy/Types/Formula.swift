//
//  Formula.swift
//  libaed
//
//  Created by amy on 20/09/2024.
//

import Foundation

public struct Formula: Hashable, Codable, Sendable, Equatable {
    
    public let name: String
    
    public let full_name: String
    
    public let tap: String
    
    public let oldnames: [String]
    
    public let aliases: [String]
    
    public let versioned_formulae: [String]
    
    public let desc: String
    
    public let license: String?
    
    public let homepage: URL
    
    public let versions: Version
    
    public let urls: FormulaURL
    
    public let revision: Int
    
    public let version_scheme: Int
    
    public let bottle: Bottle
    
    public let pour_bottle_only_if: String?
    
    public let keg_only: Bool
    
    public let keg_only_reason: KegOnlyReason?
    
    public let build_dependencies: [String]
    
    public let dependencies: [String]
    
    public let test_dependencies: [String]
    
    public let recommended_dependencies: [String]
    
    public let optional_dependencies: [String]
    
    public let requirements: [Requirements]
    
    public let conflicts_with: [String]
    
    public let conflicts_with_reasons: [String?]
    
    public let link_overwrite: [String]
    
    public let caveats: String?
    
    public let installed: [Installed]
    
    public let linked_keg: String?
    
    public let pinned: Bool
    
    public let outdated: Bool
    
    public let deprecated: Bool
    
    public let deprecation_date: String?
    
    public let deprecation_reason: String?
    
    public let disabled: Bool
    
    public let disable_date: String?
    
    public let disable_reason: String?
    
    public let post_install_defined: Bool
    
    public let service: Service?
    
    public let tap_git_head: String
    
    public let ruby_source_path: String
    
    public let ruby_source_checksum: Checksum
    
    public let variations: Variations
    
    public let head_dependencies: HeadDependencies?
    
}
