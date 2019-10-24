//  ContentView.swift
//  ReposCards


import SwiftUI

struct ContentView: View {
  
    var repoCards: [RepoCard] = repoData
    var body: some View {
      List(repoCards) { repoCard in
        CardView(repoCard: repoCard)
      }
      .onAppear { UITableView.appearance().separatorStyle = .none }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
