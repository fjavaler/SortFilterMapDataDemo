//
//  UserModel.swift
//  SortFilterMapDataDemo
//
//  Created by Frederick Javalera on 6/2/21.
//

import Foundation

struct UserModel: Identifiable {
  // MARK: Properties
  let id = UUID().uuidString
  let name: String
  let points: Int
  let isVerified: Bool
}
