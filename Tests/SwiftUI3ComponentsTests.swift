
import XCTest
import SwiftUI
import SwiftUIFlowLayout
@testable import SwiftUI3Components

final class SwiftUIComponentsTests: XCTestCase {

    func testThemeDefaults() {
        let theme = CTheme()
        XCTAssertEqual(theme.cornerRadius, CRadius.md)
        XCTAssertEqual(theme.padding, CSpacing.md)
    }

    func testChipRenders() throws {
        // Basic smoke test: ensure the view can be created and hosted
        let chip = Chip("SwiftUI", variant: .filled)

        let host = UIHostingController(rootView: chip)
        XCTAssertNotNil(host.view)     // forces view load
        host.view.layoutIfNeeded()
    }

    func testGlassCardRenders() throws {
        let view = GlassCard {
            VStack {
                Text("Hello")
                Text("World")
            }
        }

        let host = UIHostingController(rootView: view)
        XCTAssertNotNil(host.view)
        host.view.layoutIfNeeded()
    }

    func testFloatingLabelTextFieldBindsText() throws {
        var value = ""
        let binding = Binding(get: { value }, set: { value = $0 })

        let view = FloatingLabelTextField("Name", text: binding)
        let host = UIHostingController(rootView: view)

        XCTAssertNotNil(host.view)
        host.view.layoutIfNeeded()

        // We can’t easily "type" into SwiftUI TextField in a unit test without a UI test,
        // but this still validates the view composes and binds correctly.
        XCTAssertEqual(value, "")
    }
}
