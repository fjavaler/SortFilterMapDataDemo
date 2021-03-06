//
//  ContentViewModel.swift
//  SortFilterMapDataDemo
//
//  Created by Frederick Javalera on 6/2/21.
//

import Foundation

class ContentViewModel: ObservableObject {
  
  @Published var users: [UserModel] = []
  @Published var filteredUsers: [UserModel] = []
  @Published var mappedUsers: [String] = []
  
  // MARK: Init
  init() {
    getUsers()
    updateFilteredUsers()
  }
  
  // MARK: Methods
  func getUsers() {
    let user1 = UserModel(name: "Javi", points: 40, isVerified: false)
    let user2 = UserModel(name: "Carlos", points: 15, isVerified: false)
    let user3 = UserModel(name: "Fred", points: 5, isVerified: true)
    let user4 = UserModel(name: "Karla", points: 23, isVerified: true)
    let user5 = UserModel(name: "Juan", points: 45, isVerified: true)
    let user6 = UserModel(name: "David", points: 67, isVerified: false)
    let user7 = UserModel(name: "Goya", points: 72, isVerified: true)
    let user8 = UserModel(name: "Austin", points: 8, isVerified: true)
    let user9 = UserModel(name: "Vanessa", points: 29, isVerified: false)
    let user10 = UserModel(name: "Ethan", points: 87, isVerified: true)
    self.users.append(contentsOf: [
      user1,
      user2,
      user3,
      user4,
      user5,
      user6,
      user7,
      user8,
      user9,
      user10,
    ])
  }
  
  func updateFilteredUsers() {
    /*
     3 common ways to filter:
      1. Sort
      2. Filter
      3. Map
     Uncomment one block below.
     */
    
    
    // 1. Sort (by points, e.g.)
    /*
//    filteredUsers = users.sorted { user1, user2 in
//      return user1.points > user2.points
//    }
    
    // ...Or, alternate, shorthand, version
//    filteredUsers = users.sorted(by: {$0.points > $1.points})
    */
    
    // 2. Filter
    /*
    filteredUsers = users.filter({ user in
      return user.points > 50
      //return user.name.contains("i")
    })
    
    // Shorthand
//    filteredUsers = users.filter({ $0.points > 50 })
     */
    
    // 3. Map
    /*
    mappedUsers = users.map({ user in
      return user.name
    })
    
    // Shorthand
//    mappedUsers = users.map({ $0.name })
     */
    
    /*
     Finally, these sorts, filters, and maps, can be chained for complex outcomes.
     */
    mappedUsers = users
      .sorted(by: { $0.points > $1.points })
      .filter({ $0.isVerified })
      .map({ $0.name })
  }
}
