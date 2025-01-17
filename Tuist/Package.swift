// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
      productTypes: [
        "Alamofire": .framework,
        "ComposableArchitecture": .framework
      ]
    )
#endif

let package = Package(
    name: "FamousLaunch",
    dependencies: [
//      .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .upToNextMajor(from: "1.16.1"))
        // Add your own dependencies here:
      // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
         .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
         .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .upToNextMajor(from: "1.16.1")),
    ]
)
