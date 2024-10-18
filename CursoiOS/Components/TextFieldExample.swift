//
//  TextFieldExample.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email = ""
    var body: some View {
        TextField("Escribe tu email", text: $email)
            .keyboardType(.emailAddress)
            .padding(16)
            .background(.gray.opacity(0.2))
            .cornerRadius(16)
            .padding(.horizontal, 32)
            .onChange(of:email ) {oldValue, newValue in
                print("El antiguous email es: \(oldValue) and the new one is: \(newValue)")
            }
        
        
    }
}

#Preview {
    TextFieldExample()
}
