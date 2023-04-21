//
//  JuegosGanados.swift
//  MinipokerSU
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct JuegosGanados: View {
    

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea(.all)
            
            VStack {
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
            }
            
        }
    }
}

struct JuegosGanados_Previews: PreviewProvider {
    static var previews: some View {
        JuegosGanados()
    }
}
