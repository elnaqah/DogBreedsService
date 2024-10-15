import ArgumentParser
import Hummingbird

@main
struct Server: AsyncParsableCommand {
    static var configuration = CommandConfiguration(commandName: "Server")
    
    @Option(name: .shortAndLong, help: "Host address")
    var host = "0.0.0.0"
    @Option(name: .shortAndLong, help: "Port number")
    var port = 8080
    
    func run() async throws {
        let app = setupApplication(address: .hostname(host, port: port))
        try await app.runService()
    }
    
    private func setupApplication(address: BindAddress) -> some ApplicationProtocol {
        let router = Router(context: BreedContext.self)
        router.middlewares.add(LogRequestsMiddleware(.info, includeHeaders: .all()))
        let controller = BreedsController()
        controller.add(to: router.group())
        
        return Application(
            router: router,
            configuration: .init(address: address)
        )
    }
}
