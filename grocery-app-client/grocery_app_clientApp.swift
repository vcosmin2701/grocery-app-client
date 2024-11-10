import SwiftUI

@main
struct grocery_app_clientApp: App {
    
    @StateObject private var model = GroceryModel()
    
    var body: some Scene {
        WindowGroup {
            RegistrationScreen()
                .environmentObject(model)
        }
    }
}
