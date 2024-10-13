import Hummingbird

struct BreadsController {
    
    func add<Context: RequestContext>(to group: RouterGroup<Context>) {
        group
            .get("/breads", use: breads)
            .get("/breads/:breedID", use: bread)
    }
    
    @Sendable
    func breads<Context: RequestContext>(
        _ request: Request,
        context: Context
    ) async throws -> Response {
        return .init(status: .ok)
    }
    
    @Sendable
    func bread<Context: RequestContext>(
        _ request: Request,
        context: Context
    ) async throws -> Response {
        return .init(status: .ok)
    }
}
