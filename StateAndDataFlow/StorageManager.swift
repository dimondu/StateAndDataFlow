//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Дмитрий Дуров on 16.09.2022.
//

import Foundation

class StorageManager: ObservableObject {
    
    static let shared = StorageManager()
    
    private let defaults = UserDefaults.standard
    private let userKey = "user"
    
    private init() {}
    
    func saveUser(user: User) {
        guard let data = try? JSONEncoder().encode(user) else { return }
        defaults.set(data, forKey: userKey)
    }
   
    func uploadUser() -> User {
        guard let data = defaults.data(forKey: userKey) else { return User()}
        guard let user = try? JSONDecoder().decode(User.self, from: data) else { return User() }
        return user
    }

    func delete(userManager: UserManager) {
        userManager.user.name = ""
        userManager.user.isRegister = false
        defaults.removeObject(forKey: userKey)
    }
}


