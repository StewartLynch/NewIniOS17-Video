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

struct Part1: View {
    @State private var randomNum = 1
    var body: some View {
//        let selectedColor = if randomNum == 1 { Color.red } else { Color.blue }
        let selectedColor = switch randomNum {
        case 1: Color.red
        case 2: Color.blue
        case 3: Color.green
        default: Color.orange
        }
        VStack {
            Button("Change Colors") {
                randomNum = Int.random(in: 1...4)
            }
            .buttonStyle(.borderedProminent)
            VStack {
                Text("View 1!")
                Text("View 2!")
                Text("View 3!")
                Text("View 4!")
                Text("View 5!")
                Text("View 6!")
                Text("View 7!")
                Text("View 8!")
                Text("View 9!")
                Text("View 10!")
                Text("View 11!")
            }
            .font(.largeTitle)
            .bold()
            .foregroundStyle(selectedColor)
        }
//        .onChange(of: selectedColor) { oldValue, newValue in
//            print(oldValue, newValue)
//        }
        .onChange(of: selectedColor) {
            print("Something changed")
        }
        .headerView("ForegroundStyle\nRemoval of View Limits\nIf and Switch statements as expressions\nonChange method")
        
    }
}

#Preview {
    Part1()
}

