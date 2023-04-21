//
//  Reglas.swift
//  MinipokerSU
//
//  Created by Marco Alonso Rodriguez on 21/04/23.
//

import SwiftUI

struct Reglas: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text("Reglas del juego")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
//            .navigationBarBackButtonHidden(true)
            
            
        }.background(
            Image("fondo2")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
    }
}

struct Reglas_Previews: PreviewProvider {
    static var previews: some View {
        Reglas()
    }
}
