//
//  ContentView.swift
//  SortFilterMapDataDemo
//
//  Created by Frederick Javalera on 6/2/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: Properties
  @StateObject var viewModel = ContentViewModel()
  
  // MARK: Body
  var body: some View {
    
    ScrollView {
      
      VStack(spacing: 20) {
        
        ForEach(viewModel.filteredUsers) { user in
          
          VStack(alignment: .leading) {
            
            Text(user.name)
              .font(.headline)
            
            HStack {
              
              Text("Points: \(user.points)")
              
              Spacer()
              
              if user.isVerified {
                Image(systemName: "flame.fill")
              }
            
            }//: HStack
          
          }//: VStack
          .foregroundColor(.white)
          .padding()
          .background(Color.blue.cornerRadius(10))
          .padding(.horizontal)
        
        }//: ForEach
      
      }//: VStack
    
    }//: ScrollView
  
  }//: Body

}//: View

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
