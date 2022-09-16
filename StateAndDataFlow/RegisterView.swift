//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    @State private var color: Color = .red
    
    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                
                Text(name.count.formatted())
                    .foregroundColor(changeLabelColor())
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(buttonIsEnable())
        }
        .padding()
    }
    
    private func changeLabelColor() -> Color {
        name.count >= 3 ? .green : .red
    }
    
    private func buttonIsEnable() -> Bool {
        name.count >= 3 ? false : true
        
    }
    
    private func registerUser() {
        if !name.isEmpty, name.count >= 3 {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
