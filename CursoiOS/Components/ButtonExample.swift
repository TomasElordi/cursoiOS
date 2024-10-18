//
//  ButtonExample.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct ButtonExample: View {
    @State var counter = 0
    var body: some View {
        Button("Hola") {
            print("Hola")
        }
        Button(
            action: {
                print("Hola")
            }
        ) {
            Text("Hola")
                .frame(width: 100,height: 50)
                .background(.orange)
                .cornerRadius(10)
        }
        
        Button(
            action: {
                counter += 1
            },
            label: {
                Text("Counter \(counter)")
            }
        )
    }
}

#Preview {
    ButtonExample()
}
