// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUI3Components",
    platforms: [.iOS(.v18)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftUI3Components",
            targets: ["SwiftUI3Components"]
        )
    ],
    dependencies: [.package(name: "SwiftUIFlowLayout", url: "https://github.com/globulus/swiftui-flow-layout", from: "1.0.5")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftUI3Components",
            dependencies: ["SwiftUIFlowLayout"], 
            path: "Sources/",
            exclude: ["../Example"]
        ),
        .testTarget(
            name: "SwiftUI3ComponentsTests",
            dependencies: ["SwiftUI3Components", "SwiftUIFlowLayout"], 
            path: "Tests/",
            exclude: ["../Example"]
        ),
    ]
)
