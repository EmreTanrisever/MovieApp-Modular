import ProjectDescription

let appTarget = Target(
    name: "MovieApp",
    destinations: .iOS,
    product: .app,
    bundleId: "com.emretanrisever.movieapp",
    infoPlist: .extendingDefault(with: [
        "UILaunchStoryboardName": "LaunchScreen"
    ]),
    sources: "Source/**",
    resources: [
        "Resources/**",
        "Resources/Assets.xcassets"
    ],
    dependencies: [
        .project(target: "NetworkKit", path: .relativeToCurrentFile("../Kits/NetworkKit")),
        .project(target: "ModelKit", path: .relativeToCurrentFile("../Kits/ModelKit")),
        .project(target: "HomeModule", path: .relativeToCurrentFile("../Modules/HomeModule"))
    ]
)

let project = Project(
    name: "MovieApp",
    targets: [
        appTarget
    ]
)
