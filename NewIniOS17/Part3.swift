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

struct Part3: View {
    @State private var selectedColor = MyColors.red
    var body: some View {
        Menu(selectedColor.rawValue){
            Picker("My Color", selection: $selectedColor) {
                ForEach(MyColors.allCases) { myColor in
                    Label(myColor.rawValue, systemImage: "square")
                        .tint(myColor.color)
                }
            }
            .paletteSelectionEffect(.symbolVariant(.fill))
            .pickerStyle(.palette)
        }
        .buttonStyle(.borderedProminent)
        .tint(selectedColor.color.gradient)
        .headerView("Palette Picker\nsymbolVariant")
    }
}

enum MyColors: String,  CaseIterable, Identifiable {
    case red, orange, yellow, green, blue, indigo, violet
    var id: Self { self }
    var color: Color {
        switch self {
            case .red: .red
            case .orange: .orange
            case .yellow: .yellow
            case .green: .green
            case .blue: .blue
            case .indigo: .indigo
            case .violet: .violet
        }
    }
}

#Preview {
    Part3()
}
