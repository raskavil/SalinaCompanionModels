import CoreLocation

public struct Vehicle: Codable {
    public let id: String
    public let position: CLLocationCoordinate2D
    public let bearing: Int
    public let tripId: Int
    
    public init(
        id: String,
        position: CLLocationCoordinate2D,
        bearing: Int,
        tripId: Int
    ) {
        self.id = id
        self.position = position
        self.bearing = bearing
        self.tripId = tripId
    }
}
