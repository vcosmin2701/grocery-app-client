import Foundation

enum Route: Hashable {
    case login
    case register
    case groceryCategoryList
}

class AppState: ObservableObject {
    @Published var routes: [Route] = []
}
