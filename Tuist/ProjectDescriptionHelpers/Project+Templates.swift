import ProjectDescription

public let deploymentTarget: DeploymentTarget = .iOS(targetVersion: "13.0", devices: [.iphone, .ipad])

extension Project {
    public static func featureFramework(name: String, dependencies: [TargetDependency] = [], deploymentTarget: DeploymentTarget = deploymentTarget) -> Project {
        return Project(
            name: name,
            targets: [
                Target(
                    name: name,
                    platform: .iOS,
                    product: .framework,
                    bundleId: "com.jedi.\(name)",
                    deploymentTarget: deploymentTarget,
                    infoPlist: .default,
                    sources: ["Sources/**"],
                    dependencies: dependencies
                )
            ]
        )
    }

    public static func featureFrameworkWithResources(name: String, dependencies: [TargetDependency] = [], deploymentTarget: DeploymentTarget = deploymentTarget) -> Project {
        return Project(
            name: name,
            targets: [
                Target(
                    name: name,
                    platform: .iOS,
                    product: .framework,
                    bundleId: "com.jedi.\(name)",
                    deploymentTarget: deploymentTarget,
                    infoPlist: .default,
                    sources: ["Sources/**"],
                    resources: ["Resources/**"],
                    dependencies: dependencies
                )
            ]
        )
    }
}
