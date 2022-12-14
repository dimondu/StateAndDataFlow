//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Дмитрий Дуров on 16.09.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var userManager: UserManager

    var body: some View {
        Group {
            if userManager.user.isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
