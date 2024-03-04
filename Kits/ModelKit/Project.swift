import ProjectDescription

let frameworkTarget = Target(
    name: "ModelKit",
    destinations: .iOS,
    product: .staticFramework,
    bundleId: "com.emretanrisever.modelkit",
    infoPlist: .default,
    sources: "Source/**",
    dependencies: [
    ]
)

let project = Project(
    name: "ModelKit",
    targets: [
        frameworkTarget
    ]
)
