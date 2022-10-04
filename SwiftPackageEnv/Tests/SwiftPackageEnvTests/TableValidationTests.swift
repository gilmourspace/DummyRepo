import XCTest

final class TableValidationTests: XCTestCase {
    /// Tests that a new tablw instance has zero rows and columns
    func testEmptyTableRowAndColumnCount() {
        let table = Table()
        XCTAssertEqual(table.rowcoumt, 0, "Row count was not zero.")
        XCTAssertEqual(table.rowcoumt, 0, "Column count was not zero.")
    }
}