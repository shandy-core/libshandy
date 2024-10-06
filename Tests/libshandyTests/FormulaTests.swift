import Foundation
import Testing
@testable import libaed

@Test func formulaTests() async throws {
    let url = URL(fileURLWithPath: "/Users/amy/Downloads/formula.json")
    let data = try Data(contentsOf: url)
    _ = try JSONDecoder().decode([Formula].self, from: data)
}
