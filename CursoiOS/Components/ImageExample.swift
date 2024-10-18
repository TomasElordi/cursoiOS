//
//  ImageExample.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("river").resizable().frame(width: 50, height: 50).scaledToFit()
        Image(systemName: "star.fill")
    }
}

#Preview {
    ImageExample()
}
