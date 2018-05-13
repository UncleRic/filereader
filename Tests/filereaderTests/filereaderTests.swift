import XCTest
@testable import filereader

final class filereaderTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
       XCTAssertEqual(FileReader.read(fileName: "hello.txt"), "Hello World")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}



import Foundation
class FileReader {
    static func read(fileName: String) -> String? {
        let fileManager = FileManager.default
        
        let currentDirectoryURL = URL(fileURLWithPath:fileManager.currentDirectoryPath)
        
        let fileURL = currentDirectoryURL.appendingPathComponent(fileName)
        
        
        return try? String(contentsOf: fileURL, encoding: .utf8)
    }
}






