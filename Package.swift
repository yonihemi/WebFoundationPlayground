// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "WebFoundationPlayground",
    products: [
        .executable(name: "WebFoundationPlayground", targets: ["WebFoundationPlayground"])
    ],
    dependencies: [
        .package(url: "https://github.com/swiftwasm/WebFoundation", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "WebFoundationPlayground",
            dependencies: [
                .product(name: "WebFoundation", package: "WebFoundation"),
            ]),
    ]
)