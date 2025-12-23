
public struct Location: Codable {
    public let latitude: Double
    public let longitude: Double
    
    public init(latitude: Double, longitude: Double) {
        self.longitude = longitude
        self.latitude = latitude
    }
}
