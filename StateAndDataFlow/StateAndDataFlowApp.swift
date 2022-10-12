//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Дмитрий Дуров on 16.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    private let user = StorageManager.shared.uploadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
