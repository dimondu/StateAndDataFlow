//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    private var countOfCharacters: Int{
        userManager.user.name.count
    }
    
    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter your name", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                
                Text(countOfCharacters.formatted())
                    .foregroundColor(countOfCharacters >= 3 ? .green : .red)
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(countOfCharacters < 3)
        }
        .padding()
    }

    private func registerUser() {
        if countOfCharacters >= 3 {
            userManager.user.isRegister.toggle()
            StorageManager.shared.saveUser(user: userManager.user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
