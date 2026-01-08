//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Farooq Mulla on 1/7/26.
//

import XCTest
@testable import Example

final class ExampleTests: XCTestCase {
    func testIncrementButtonUpdatesLabel() throws {
         let app = XCUIApplication()
         app.launch()

         let button = app.buttons["incrementButton"]
         XCTAssertTrue(button.exists)

         button.tap()
         XCTAssertTrue(app.staticTexts["Count: 1"].exists)
     }

     func testTypingIntoNameField() throws {
         let app = XCUIApplication()
         app.launch()

         let field = app.textFields["nameField"]
         XCTAssertTrue(field.exists)

         field.tap()
         field.typeText("Farooq")

         // Depending on how FloatingLabelTextField is implemented,
         // you may need to assert on a label or value rather than the raw textField.
         XCTAssertTrue(app.staticTexts["Farooq"].exists || field.value as? String == "Farooq")
     }
}
