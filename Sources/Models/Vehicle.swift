
public struct Vehicle: Codable {
    public let id: String
    public let position: Location
    public let bearing: Int
    public let tripId: String
    
    public init(
        id: String,
        position: Location,
        bearing: Int,
        tripId: String
    ) {
        self.id = id
        self.position = position
        self.bearing = bearing
        self.tripId = tripId
    }
}
