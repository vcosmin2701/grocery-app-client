import SwiftUI

@main
struct grocery_app_clientApp: App {
    
    @StateObject private var model = GroceryModel()
    @StateObject private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appState.routes) {
                RegistrationScreen()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .register:
                            RegistrationScreen()
                        case .login:
                            LoginScreen()
                        case .groceryCategoryList:
                            Text("Grocery Category List")
                        }
                    }
            }.environmentObject(model)
                .environmentObject(appState)
        }
    }
}
