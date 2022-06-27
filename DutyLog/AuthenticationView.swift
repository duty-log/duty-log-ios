//
//  AuthenticationView.swift
//  DutyLog
//
//  Created by Tricia DiPiazza on 6/26/22.
//

import SwiftUI

struct AuthenticationView: View {
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    
    var body: some View {
        ZStack {
            Color(white: 0.95)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 25.0) {
                Spacer()
                Text("Duty Log")
                    .font(.title)
                TextField(
                    "User name (email address)",
                    text: $username
                )
                .focused($emailFieldIsFocused)
                .onSubmit {
                    validate(name: username)
                }
                .disableAutocorrection(true)
                .cornerRadius(5)
#if os(iOS)
                .textInputAutocapitalization(.never)
                .padding(.horizontal)
#else
                .frame(width: 300)
                .padding(.horizontal, 20)
#endif
                
                Button("Sign In") {
                    print("\(username) clicked the button")
                }
                Spacer()
                Text("copyright 2022 Tricia")
            }
            

        }
        .textFieldStyle(.roundedBorder)
        .buttonStyle(.borderedProminent)
    }
    
    func validate(name: String) -> Bool {
        true
    }
}

struct Previews_AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
