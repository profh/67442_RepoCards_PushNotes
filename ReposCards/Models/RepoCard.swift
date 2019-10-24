//  RepoCard.swift
//  ReposCards

import SwiftUI

struct RepoCard: Identifiable {
  var id = UUID()
  var image: String
  var owner: String
  var name: String
  var tagline: String
}

let repoData = [
    RepoCard(image: "alamofire", owner: "Alamofire", name: "Alamofire", tagline: "Elegant Networking In Swift"),
    RepoCard(image: "awesome_ios", owner: "vsouza", name: "Awesome iOS", tagline: "A curated list of awesome iOS ecosystem, including Objective-C and Swift Projects"),
    RepoCard(image: "reactive_swift", owner: "ReactiveCocoa", name: "Reactive Swift", tagline: "Streams of values over time. Tailored for Swift."),
    RepoCard(image: "charts", owner: "danielgindi", name: "Charts", tagline: "Beautiful charts for iOS/tvOS/OSX. The Apple side of the crossplatform MPAndroidChart."),
    RepoCard(image: "mac_opensource", owner: "serhii-londar", name: "open-source-mac-os-apps", tagline: "Awesome list of open source applications for macOS"),
    RepoCard(image: "hero", owner: "HeroTransitions", name: "Hero", tagline: "Elegant transition library for iOS & tvOS"),
    RepoCard(image: "vapor_project", owner: "vapor", name: "Vaper", tagline: "A server-side Swift web framework."),
    RepoCard(image: "iina", owner: "iina", name: "iina", tagline: "The modern video player for macOS."),
]
