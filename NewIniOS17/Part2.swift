//
// Created for MissedIniOS17
// by  Stewart Lynch on 2023-08-22
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct Part2: View {
    var body: some View {
            VStack{
                UnevenRoundedRectangle(
                    topLeadingRadius: 65,
                    bottomLeadingRadius: 20,
                    bottomTrailingRadius: 65
                )
                    .frame(width: 100, height: 100 )
                    .foregroundStyle(.violet)
                Image(.nobleRidge)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.capsule
//                        .rect(
//                            topLeadingRadius: 145,
//                            bottomLeadingRadius: 45,
//                            bottomTrailingRadius: 145
//                        )
                    )
                    .padding()
            }
            .headerView("Image and Color symbolization\nClipShapes\nUnevenRoundedRectangle")
    }
}

#Preview {
    Part2()
}
