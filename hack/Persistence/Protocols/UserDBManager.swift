//
//  UserDBManager.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import Foundation

protocol UserDBManager {
    @discardableResult
    func createUser(with user: User) throws -> UserEntity
    func fetchUser() throws -> [UserEntity]
    func updateUser(user: User) throws
    func deleteUser() throws
}
