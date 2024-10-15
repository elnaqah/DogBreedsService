import Hummingbird

struct BreedsController {
    
    func add(to group: RouterGroup<BreedContext>) {
        group
            .get("/breeds", use: breeds)
            .get("/breeds/:breedID", use: breed)
    }
    
    @Sendable
    func breeds(
        _ request: Request,
        context: BreedContext
    ) async throws -> [DogBreed] {
        TestData.breeds
    }
    
    @Sendable
    func breed(
        _ request: Request,
        context: BreedContext
    ) async throws -> DogBreedDetails {
        let pathComponents = request.uri.path.split(separator: "/")
        
        guard pathComponents.count >= 2,
              let breedID = Int(pathComponents[1]) else {
            throw HTTPError(.badRequest)
        }
        
        guard let breed = TestData.breedDetails.first(where: { $0.id == breedID }) else {
            throw HTTPError(.notFound)
        }
        
        return breed
    }
}
