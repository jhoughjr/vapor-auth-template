import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.logger.info("Conifuring routes...")
    app.group("api") { api in
        // Authentication
        try! api.register(collection: AuthenticationController())
    }
}
