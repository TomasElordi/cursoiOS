//
//  IMCResult.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 17/10/2024.
//

import SwiftUI

struct IMCResult: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        VStack {
            Text(
                "Tu resultado"
            ).font(.title).bold().foregroundColor(.white)
            InformationView(result: calculateIMC(weight: userWeight, height: userHeight))
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundApp)
    }
}

func calculateIMC(weight:Double,height:Double)->Double{
    let heightInMeters:Double = height/100
    return weight/(heightInMeters*heightInMeters)
}

struct InformationView:View{
    let result:Double
    var body:some View{
        
        let information  = getIMCResult(result: result)
        VStack{
            Spacer()
            Text(information.0).font(.title).bold().foregroundColor(information.2)
            Text("\(result, specifier: "%.2f")").font(.system(size: 80)).fontWeight(.bold).foregroundColor(.white)
            Text(information.1).foregroundColor(.white).font(.title2).padding(.horizontal,8).multilineTextAlignment(TextAlignment.center)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent).cornerRadius(16).padding(16)
    }
}

func getIMCResult(result:Double) -> (String,String,Color){
    let title:String
    let description:String
    let color:Color
    
    switch result{
    case 0.00...19.99:
        title = "Peso bajo"
        description = "Estas por debajo del peso recomendado segun el IMC."
        color = .yellow
    case 20.00...24.99:
        title = "Peso normal"
        description = "Estas en el peso recomendado segun el IMC."
        color = .green
    case 25.00...29.99:
        title = "Sobrepeso"
        description = "Estas por encima del peso recomendad osegun el IMC."
        color = .orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estas muy por encima del peso recomendado segun el IMC."
        color = .red
    default:
        title = "ERROR"
        description = "Error, no se pudo calcular el IMC"
        color = .gray
    }
    
    return (title,description,color)
}

#Preview {
    IMCResult(userWeight: 80, userHeight: 190)
}
