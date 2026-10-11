// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "NotAi",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .library(name: "libnotai", targets: ["libnotai"]),
        .executable(name: "NotAi", targets: ["NotAi"]),
    ],
    targets: [
        .target(
            name: "libnotai",
            path: "core",
        ),
        .executableTarget(
            name: "NotAi",
            dependencies: ["libnotai"],
            path: "clients/macos",
            swiftSettings: [.interoperabilityMode(.C)]
        ),
    ],
    swiftLanguageModes: [.v6],
    cLanguageStandard: .c17
)
