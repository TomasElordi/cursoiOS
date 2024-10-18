//
//  ContentView.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle().foregroundColor(.blue)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
            }
            Rectangle().foregroundColor(.orange)
            HStack{
                Circle().foregroundColor(.green)
                Rectangle()
                Circle().foregroundColor(.purple)
            }
            .frame(height: 300).background(.red)
            Rectangle().foregroundColor(.orange)
            HStack{
                Rectangle().foregroundColor(.blue)
                Rectangle().foregroundColor(.orange)
                Rectangle().foregroundColor(.yellow)
            }
        }.background(.red)
    }
}

#Preview {
    Exercise1()
}
