import SwiftUI

struct RegistrationScreen: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    private var isFormValid: Bool {
        !username.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace && (password.count >= 6 && password.count <= 12)
    }
    
    private func register() async {
        
    }
    
    var body: some View {
        Form {
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            
            HStack {
                Button("Register"){

                }.buttonStyle(.borderless)
                    .disabled(!isFormValid)
            }
        }
    }
}

#Preview {
    RegistrationScreen()
}
