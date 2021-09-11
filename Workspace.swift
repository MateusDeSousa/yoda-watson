import ProjectDescription

let workspace = Workspace(
    name: "YodaApp",
    projects: [
        .relativeToManifest("App"),
        .relativeToManifest("Modules/**")
    ]
)