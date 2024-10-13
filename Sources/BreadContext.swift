import Hummingbird

struct BreadContext: RequestContext {
    var coreContext: CoreRequestContextStorage

    init(source: ApplicationRequestContextSource) {
        self.coreContext = .init(source: source)
    }
}
