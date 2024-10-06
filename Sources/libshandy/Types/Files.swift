//
//  Files.swift
//  libaed
//
//  Created by Amy on 06/10/2024.
//

public struct Files: Codable, Sendable, Hashable, Equatable {
    
    private let files: [Variation: CellarFile]

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)
        var tempFiles: [Variation: CellarFile] = [:]
        for key in container.allKeys {
            let variation = Variation(rawValue: key.stringValue) ?? .all
            let file = try container.decode(CellarFile.self, forKey: key)
            tempFiles[variation] = file
        }
        self.files = tempFiles
    }
    
    public subscript(variation: Variation) -> CellarFile? {
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
