//
//  IMCView.swift
//  CursoiOS
//
//  Created by Tomas Elordi on 16/10/2024.
//

import SwiftUI

struct IMCView: View {
    //    init(){
    //        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    //    }
    @State var gender:Int = 0
    @State var height:Double = 150
    @State var age:Int = 18
    @State var weight:Int = 70
    var body: some View {
        VStack{
            HStack{
                ToogleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToogleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            HeightCalculator(selectedHeight: $height)
            HStack{
                Counter(text: "Edad",limit: 100, counter: $age)
                Counter(text: "Peso",limit:200, counter: $weight)
            }
            IMCCalculateButton(userWeight: Double(weight), userHeight: height)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar{
            ToolbarItem(placement: .principal){
                Text("IMC Calculator").foregroundColor(.white).bold()
            }
        }
    }
}

struct IMCCalculateButton:View{
    let userWeight:Double
    let userHeight:Double
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: { IMCResult(userWeight: userWeight , userHeight: userHeight) }) {
                Text("Calcular").font(.title).bold().foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100).background(.backgroundComponent)
            }
        }
    }
}

struct ToogleButton:View {
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender:Int
    
    
    var body: some View {
        let color = if(gender == selectedGender) {
            Color.backgroundComponentSelected
        }else{
            Color.backgroundComponent
        }
        
        Button {
            selectedGender = gender
        } label: {
            VStack{
                Image(systemName: imageName).resizable().scaledToFit().frame(height:100)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
            .foregroundColor(.white)
        }
    }
}

struct InformationText:View{
    let text:String
    var body: some View{
        Text(text).bold().foregroundColor(.white).font(.largeTitle)
    }
}

struct TitleText:View{
    let text:String
    var body: some View{
        Text(text).foregroundColor(.gray).font(.title2)
    }
}

struct HeightCalculator:View{
    @Binding var selectedHeight:Double
    var body: some View{
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value:$selectedHeight, in : 100...220, step: 1).accentColor(.purple).padding(.horizontal,16)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}

struct Counter:View{
    let text:String
    let limit:Int
    @Binding var counter:Int
    
    var body: some View{
        VStack{
            TitleText(text: text)
            InformationText(text: "\(counter)")
            HStack{
                Button{
                    if(counter <= 0){counter = 0}else{
                        counter -= 1
                    }
                } label: {
                    ZStack{
                        Circle().foregroundColor(Color.purple).frame(width: 70, height: 70)
                        Image(systemName: "minus").resizable().scaledToFit().frame(width: 25, height: 25).foregroundColor(.white).bold()
                    }.opacity(counter == 0 ? 0.3 : 1)
                }.disabled(counter == 0)
                Button{
                    if(counter >= limit) {counter = limit}else{
                        counter += 1
                    }
                } label: {
                    ZStack{
                        Circle().fill(Color.purple).frame(width: 70, height: 70)
                        Image(systemName: "plus").resizable().frame(width: 25, height: 25).foregroundColor(.white).bold()
                    }.opacity(counter == limit ? 0.3 : 1)
                }.disabled(counter == limit)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
        
    }
    
}

#Preview {
    IMCView()
    //    ToogleButton(text: "Tomas", imageName: "heart.fill", index: 0)
}
