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

struct HeaderView: ViewModifier {
    var headerText: String

    func body(content: Content) -> some View {
        VStack {
            HStack {
                Text(headerText).font(.caption)
                Spacer()
            }
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 10).fill(.quinary))
                .padding(.horizontal)
                content
            Spacer()
        }
    }
}

extension View {
    func headerView(_ headerText: String) -> some View {
        self.modifier(HeaderView(headerText: headerText))
    }
}
