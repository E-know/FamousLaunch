import ProjectDescription

let project = Project(
    name: "FamousLaunch",
    targets: [
        .target(
            name: "FamousLaunch",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.FamousLaunch",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["FamousLaunch/Sources/**"],
            resources: ["FamousLaunch/Resources/**"],
            dependencies: [
              .external(name: "Alamofire"),
              .external(name: "ComposableArchitecture")
            ]
        ),
        .target(
            name: "FamousLaunchTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.FamousLaunchTests",
            infoPlist: .default,
            sources: ["FamousLaunch/Tests/**"],
            resources: [],
            dependencies: [.target(name: "FamousLaunch")]
        ),
    ]
)
