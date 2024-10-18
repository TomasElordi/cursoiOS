//
//  LabelExample.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("AAAAA",image: "river")
        Label("aaaaaa", systemImage: "star.fill")
        Label(title: {Text("Label")}, icon: {Image("river").resizable().frame(width: 30, height: 30)})
    }
}

#Preview {
    LabelExample()
}
