import ProjectDescription

let deploymentTarget: DeploymentTarget = .iOS(targetVersion: "13.0", devices: [.iphone, .ipad])

let depedencies: [TargetDependency] = []

let project = Project(
    name: "YodaApp",
    organizationName: "Jedi",
	settings: Settings(configurations: [
        .debug(name: "Debug", xcconfig: .relativeToManifest("Configurations/Base.xcconfig")),
        .release(name: "Release", xcconfig: .relativeToManifest("Configurations/Base.xcconfig"))	
	]),
    targets: [
        Target(
        	name: "YodaApp",
        	platform: .iOS,
        	product: .app,
        	bundleId: "com.jedi.yoda-app",
			deploymentTarget: deploymentTarget,
        	infoPlist: "Configurations/Info.plist",
        	sources: ["Sources/**"],
        	resources: ["Resources/**"],
            dependencies: depedencies
        )
    ],
	schemes: [
		Scheme(
			name: "YodaApp",
            shared: true,
            buildAction: BuildAction(targets: ["YodaApp"]),
            runAction: RunAction(executable: "YodaApp"),
			archiveAction: ArchiveAction(configurationName: "Release")
		)
	]
)