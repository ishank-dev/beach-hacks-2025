import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "pills")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
                
                Text("Prescription Alert")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                Button(action: {
                    // Simple validation
                    if username.isEmpty || password.isEmpty {
                        showAlert = true
                    } else {
                        isLoggedIn = true
                    }
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                
                NavigationLink(destination: ContentView(), isActive: $isLoggedIn) {
                    EmptyView()
                }
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                    Button("Sign up") {
                        // Sign up action would go here
                    }
                    .foregroundColor(.blue)
                }
                .padding(.bottom)
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Login Error"),
                    message: Text("Please enter both username and password."),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
    }
}

#Preview {
    LoginView()
}
