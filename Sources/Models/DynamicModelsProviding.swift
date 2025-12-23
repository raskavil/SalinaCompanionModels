import Foundation
import SwiftUI

public protocol DynamicModelsProviding {
    var vehicles: [Vehicle] { get async throws }
}

public extension EnvironmentValues {
    var dynamicDataProvider: DynamicModelsProviding {
        get { self[DynamicDataProviderKey.self] }
        set { self[DynamicDataProviderKey.self] = newValue }
    }
}

private struct DynamicDataProviderMock: DynamicModelsProviding {
    var vehicles: [Vehicle] { [] }
}

private struct DynamicDataProviderKey: EnvironmentKey {
    static let defaultValue: DynamicModelsProviding = DynamicDataProviderMock()
}
