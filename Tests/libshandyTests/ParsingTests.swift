import Foundation
import Testing
@testable import libshandy

public struct ParsingTests {
    
    @Test func parseFormula() async throws {
        let data = try await URLSession.shared.data(from: BREW_FORMULA_URL).0
        _ = try JSONDecoder().decode([Formula].self, from: data)
    }
    
}


