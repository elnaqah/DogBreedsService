import Hummingbird

struct BreedContext: RequestContext {
    var coreContext: CoreRequestContextStorage

    init(source: ApplicationRequestContextSource) {
        self.coreContext = .init(source: source)
    }
}
