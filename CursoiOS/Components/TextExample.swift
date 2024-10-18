//
//  TextExample.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text("Hello, World!").font(.headline)
            Text("Hello, World!").font(.system(size:40,weight: .bold,design:
                    .monospaced))
            .italic()
            .underline()
            .foregroundColor(.blue)
            .background(.red)
            Text("HOLA HOLA HOLA HOLA HOLA HOLA HOLA").frame(width: 100).lineLimit(2).lineSpacing(10)
        }
    }
}

#Preview {
    TextExample()
}
