//  CardView.swift
//  ReposCards


import SwiftUI

struct CardView: View {
    let repoCard: RepoCard
    var body: some View {
      CardContent(repoCard: repoCard)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
          .stroke(Color(.sRGB, red: 200/255, green: 200/255, blue: 200/255, opacity: 0.6), lineWidth: 1)
      )
        .padding([.top, .leading, .trailing], 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(repoCard: repoData[0])
    }
}
