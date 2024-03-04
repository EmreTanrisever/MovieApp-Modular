
import ProjectDescription

let frameworkTarget = Target(
    name: "NetworkKit",
    destinations: .iOS,
    product: .staticFramework,
    bundleId: "com.emretanrisever.networkkit",
    infoPlist: .default,
    sources: "Source/**",
    dependencies: [
        .project(target: "ModelKit", path: .relativeToCurrentFile("../ModelKit"))
    ]
)


let unitTests = Target(
    name: "NetworkKitTests",
    destinations: .iOS,
    product: .unitTests,
    bundleId: "com.emretanrisever.networkkittests",
    infoPlist: .default,
    sources: [
        "Tests/**"
    ],
    dependencies: [
        .target(name: "NetworkKit")
    ]
)

let project = Project(
    name: "NetworkKit",
    targets: [
        frameworkTarget,
        unitTests
    ]
)

