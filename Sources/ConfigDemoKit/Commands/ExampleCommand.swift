import Foundation
import SwiftCLI

public class ExampleCommand: Command {
    // MARK: - Command
    public let name: String = "example"
    public let shortDescription: String = "TODO: Short description of your sub command"

    // MARK: - Initializers
    public init() {}

    // MARK: - Instance Methods
    public func execute() throws {
        print("not yet implemented", level: .warning)
        // TODO: not yet implemented
    }
}
