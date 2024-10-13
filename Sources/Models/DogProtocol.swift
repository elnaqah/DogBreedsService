import Foundation
import Hummingbird

protocol DogProtocol: Codable, ResponseGenerator {}

extension DogProtocol {
    func response(from request: Request, context: some RequestContext) throws -> Response {
        let jsonData = try JSONEncoder().encode(self)
        var response = Response(status: .ok)
        response.body = ResponseBody(byteBuffer: ByteBuffer(data: jsonData))
        return response
    }
}
