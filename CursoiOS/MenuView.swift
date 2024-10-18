//
//  MenuView.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink{
                    IMCView()
                } label: {
                    Text("IMC Calculator")
                }
                
            }
        }
    }
}

#Preview {
    MenuView()
}
