//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
        
    }
}
