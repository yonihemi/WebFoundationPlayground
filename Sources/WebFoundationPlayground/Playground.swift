import Foundation
import WebFoundation

@main
struct Playground {
    static func main() async throws {
        let url = URL(string: "https://api.sampleapis.com/coffee/hot")!
        let (data, _) = try await URLSession.shared.data(from: url)
        print("Received bytes:", data.count)
        let string = String(data: data, encoding: .utf8)!
        print("Received source:", string)
    }
}
