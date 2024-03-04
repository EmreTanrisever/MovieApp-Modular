import ProjectDescription

let homeModule = Target(
    name: "HomeModule",
    destinations: .iOS,
    product: .staticFramework,
    bundleId: "com.emretanrisever.homemodule",
    infoPlist: .default,
    sources: [
        "Source/**",
        "ProtocolSource/**"
    ],
    resources: [
        "Resource/**",
        "Resource/Assets.xcassets"
    ],
    dependencies: [
        
    ]
)

let unitTests = Target(
    name: "HomeModuleTests",
    destinations: .iOS,
    product: .unitTests,
    bundleId: "com.emretanrisever.homemoduletests",
    infoPlist: .default,
    sources: [
        "Tests/**"
    ],
    dependencies: [
        .target(name: "HomeModule")
    ]
)

let project = Project(
    name: "HomeModule",
    targets: [
        homeModule,
        unitTests
    ]
)

