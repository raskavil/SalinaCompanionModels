import Foundation
import SwiftUI

public protocol StaticModelsProviding {
    var isUpToDate: Bool { get async }
    var trips: [Trip] { get }
    var filteredRoutes: Set<String> { get set }
}

public extension EnvironmentValues {
    var staticDataProvider: StaticModelsProviding {
        get { self[StaticDataProviderKey.self] }
        set { self[StaticDataProviderKey.self] = newValue }
    }
}

private struct StaticDataProviderMock: StaticModelsProviding {
    var isUpToDate: Bool { true }
    var trips: [Trip] { [] }
    var filteredRoutes: Set<String> = []
}

private struct StaticDataProviderKey: EnvironmentKey {
    static let defaultValue: StaticModelsProviding = StaticDataProviderMock()
}
