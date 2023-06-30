import SwiftUI

@available(macOS 10.15, *)
extension LaunchAtLogin {
	/**
	This package comes with a `LaunchAtLogin.Toggle` view which is like the built-in `Toggle` but with a predefined binding and label. Clicking the view toggles “launch at login” for your app.

	```
	struct ContentView: View {
		var body: some View {
			LaunchAtLogin.Toggle()
		}
	}
	```

	The default label is `"Launch at login"`, but it can be overridden for localization and other needs:

	```
	struct ContentView: View {
		var body: some View {
			LaunchAtLogin.Toggle {
				Text("Launch at login")
			}
		}
	}
	```
	*/
	public struct Toggle<Label: View>: View {
		@ObservedObject private var launchAtLogin = LaunchAtLogin.observable
		private let label: Label

		/**
		Creates a toggle that displays a custom label.

		- Parameters:
			- label: A view that describes the purpose of the toggle.
		*/
		public init(@ViewBuilder label: () -> Label) {
			self.label = label()
		}

		public var body: some View {
			SwiftUI.Toggle(isOn: $launchAtLogin.isEnabled) { label }
		}
	}
}
