
public struct Trip: Codable, Sendable {
    public let tripId: Int
    public let routeId: String
    public let lineName: String
    public let headsign: String
    public let routeType: Int
    public let textColorHex: String
    public let backgroundColorHex: String
    
    public init(
        tripId: Int,
        routeId: String,
        lineName: String,
        headsign: String,
        routeType: Int,
        textColorHex: String,
        backgroundColorHex: String
    ) {
        self.tripId = tripId
        self.routeId = routeId
        self.lineName = lineName
        self.headsign = headsign
        self.routeType = routeType
        self.textColorHex = textColorHex
        self.backgroundColorHex = backgroundColorHex
    }

    public var vehicleType: VehicleType {
        switch (routeType, Int(lineName)) {
        case (0, _):                .tram
        case (2, _):                .train
        case (4, _):                .boat
        case (3, .some(20...39)):   .trolleybus
        default:                    .bus
        }
    }
}
