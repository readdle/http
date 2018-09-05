// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "HTTP",
    products: [
        .library(name: "HTTP", targets: ["HTTP"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/readdle/vapor-core.git", .upToNextMajor(from: "3.4.4")),
        
        // Event-driven network application framework for high performance protocol servers & clients, non-blocking.
        .package(url: "https://github.com/readdle/swift-nio.git", .upToNextMajor(from: "1.9.4")),

        // Bindings to OpenSSL-compatible libraries for TLS support in SwiftNIO
        .package(url: "https://github.com/readdle/swift-nio-ssl.git", .upToNextMajor(from: "1.2.3")),
    ],
    targets: [
        .target(name: "HTTP", dependencies: ["Async", "Bits", "Core", "Debugging", "NIO", "NIOOpenSSL", "NIOHTTP1"]),
        .testTarget(name: "HTTPTests", dependencies: ["HTTP"]),
        .target(name: "HTTPPerformance", dependencies: ["HTTP"]),
    ]
)
