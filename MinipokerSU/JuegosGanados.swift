//
//  JuegosGanados.swift
//  MinipokerSU
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct JuegosGanados: View {
    @State private var juegosGanados = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea(.all)
            
            VStack {
                TextField("Ingrese su texto aquí", text: $juegosGanados)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.title)
                    .foregroundColor(.black)
                    .background(
                        Color.white
                    )
                    .cornerRadius(12)
                
                Text("Juegos Ganados")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 50)
                
                Image("poker")
                    .resizable()
                    .frame(width: 300, height: 150)
                    .cornerRadius(20)
                
                List {
                    Text("100")
                    Text("450")
                    Text("500")
                }
                .listStyle(.plain)
                
                
                Spacer()
            }.padding()
//                .navigationBarBackButtonHidden(true)
                .accentColor(.white) 
        }
    }
}

struct JuegosGanados_Previews: PreviewProvider {
    static var previews: some View {
        JuegosGanados()
    }
}
