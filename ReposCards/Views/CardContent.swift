//  CardContent.swift
//  ReposCards

import SwiftUI

struct CardContent: View {
    let repoCard: RepoCard
    var body: some View {
      VStack {
        Image(repoCard.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
          .padding(.top)
        
        HStack {
          VStack(alignment: .leading) {
            Text(repoCard.owner)
                  .font(.headline)
                  .foregroundColor(.secondary)
            Text(repoCard.name)
                  .font(.title)
                  .fontWeight(.black)
                  .foregroundColor(.primary)
              .padding(5)
            Text(repoCard.tagline.uppercased())
                  .font(.caption)
                  .foregroundColor(.secondary)
                  .lineLimit(3)
          }
          .layoutPriority(100)
          Spacer()
        }
        .padding([.bottom, .leading, .trailing], 10)
      }
    }
}

struct CardContent_Previews: PreviewProvider {
    static var previews: some View {
        CardContent(repoCard: repoData[0])
    }
}
