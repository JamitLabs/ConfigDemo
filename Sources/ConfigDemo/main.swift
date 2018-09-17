import Foundation
import ConfigDemoKit
import SwiftCLI

// MARK: - CLI
let cli = CLI(name: "configdemo", version: "0.1.0", description: "TODO: Short description of your tool.")
cli.commands = [ExampleCommand()]
cli.globalOptions.append(contentsOf: GlobalOptions.all)
cli.goAndExit()
