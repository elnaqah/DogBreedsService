import Hummingbird

struct BreadsController {
    
    func add(to group: RouterGroup<BreadContext>) {
        group
            .get("/breads", use: breads)
            .get("/breads/:breedID", use: bread)
    }
    
    @Sendable
    func breads(
        _ request: Request,
        context: BreadContext
    ) async throws -> [DogBreed] {
        breeds
    }
    
    @Sendable
    func bread(
        _ request: Request,
        context: BreadContext
    ) async throws -> DogBreedDetails {
        let pathComponents = request.uri.path.split(separator: "/")
        
        guard pathComponents.count >= 2,
              let breedID = Int(pathComponents[1]) else {
            throw HTTPError(.badRequest)
        }
        
        guard let breed = breedDetails.first(where: { $0.id == breedID }) else {
            throw HTTPError(.notFound)
        }
        
        return breed
    }
}
