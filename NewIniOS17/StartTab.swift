//
// Created for NewIniOS17
// by  Stewart Lynch on 2023-08-23
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct StartTab: View {
    var body: some View {
        NavigationStack{
            TabView {
                Part1()
                    .tabItem {
                        Label("Part 1", systemImage:  "1.circle.fill")
                    }
                Part2()
                    .tabItem {
                        Label("Part 2", systemImage:  "2.circle.fill")
                    }
                Part3()
                    .tabItem {
                        Label("Part 3", systemImage:  "3.circle.fill")
                    }
                Part4()
                    .tabItem {
                        Label("Part 4", systemImage:  "4.circle.fill")
                    }
            }
            .navigationTitle("New in iOS 17")
        }
    }
}

#Preview {
    StartTab()
}
