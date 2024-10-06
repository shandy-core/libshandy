//
//  Service.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//

import Foundation

public struct Service: Codable, Hashable, Equatable, Sendable {
    
    public let run_type: String?
    
    public let working_dir: String?
    
    public let log_path: String?
    
    public let error_log_path: String?
    
    public let environment_variables: [String: String?]?
    
    public let interval: Int?
    
    public let require_root: Bool?
    
    public let cron: String?
    
    public let name: Name?
    
    public let sockets: String?
    
    public let process_type: String?
    
    public let macos_legacy_timers: Bool?
    
    public let input_path: String?
    
    public let properties: Properties?
    
    public struct Name: Codable, Hashable, Equatable, Sendable {
        
        public let macos: String
        
    }
    
    public struct KeepAlive: Codable, Hashable, Equatable, Sendable {
        
        public let always: Bool
        
        public let successful_exit: Bool
        
        public let crashed: Bool
        
    }
    
    public struct Properties: Codable, Hashable, Equatable, Sendable {
        
        public let shared: [String]
        
        public let macos: [String]
        
        public let linux: [String]
        
        enum CodingKeys: String, CodingKey {
            case macos
            case linux
        }
        
        public init(from decoder: any Decoder) throws {
            if let container = try? decoder.singleValueContainer() {
                if let str = try? container.decode(String.self) {
                    self.shared = [str]
                } else {
                    let str = try container.decode([String].self)
                    self.shared = str
                }
                self.macos = []
                self.linux = []
            } else {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                self.macos = try container.decode([String].self, forKey: .macos)
                self.linux = try container.decode([String].self, forKey: .linux)
                self.shared = []
            }
        }
    }
    
}
