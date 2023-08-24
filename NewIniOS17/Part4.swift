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

struct Part4: View {
    @State private var selectedColor = MyColors.red
    @State private var contrast: Double = 1
    @State private var clear = false
    var body: some View {
            Image("Noble Ridge")
                .resizable()
                .scaledToFit()
                .modifier(
                    WithModifiers(
                        selectedColor: selectedColor,
                        contrast: contrast,
                        clear: clear
                    )
                )
                .padding()
                .contextMenu {
                    ControlGroup {
                        Button {
                            clear = true
                        } label: {
                            Label("Clear", systemImage: "x.circle")
                        }
                        Button {
                            clear = false
                        } label: {
                            Label("Apply", systemImage: "checkmark")
                        }
                    }
                    .controlGroupStyle(.compactMenu)
                    Slider(value: $contrast, in: 0.5...3.0) {
                        Text("Contrast: \(contrast, format: .number)")
                    }
                    Picker("My Color", selection: $selectedColor) {
                        ForEach(MyColors.allCases) { myColor in
                            Label(myColor.rawValue, systemImage: "square")
                                .tint(myColor.color)
                        }
                    }
                    .paletteSelectionEffect(.symbolVariant(.fill))
                    .pickerStyle(.palette)
                }
                .headerView("ContextMenu ControlGroups")
    }
}

struct WithModifiers: ViewModifier {
    let selectedColor: MyColors
    let contrast: Double
    let clear: Bool
    func body(content: Content) -> some View {
        if clear {
            content
        } else {
            content
                .colorMultiply(selectedColor.color)
                .contrast(contrast)
        }
    }
}
#Preview {
    Part4()

}
