// swift-tools-version:5.2
import PackageDescription

let package = Package(
	name: "LaunchAtLogin",
	platforms: [
		.macOS(.v10_13)
	],
	products: [
		.library(
			name: "LaunchAtLogin",
			targets: ["LaunchAtLogin"]
		)
	],
	targets: [
		.target(
			name: "LaunchAtLogin",
			exclude: [
				"Info.plist",
				"copy-helper.sh"
			],
			resources: [
			]
		)
	]
)
