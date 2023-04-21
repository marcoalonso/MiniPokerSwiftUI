//
//  ContentView.swift
//  MinipokerSU
//
//  Created by marco rodriguez on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var apuesta: Int = 0
    @State private var goToApostar: Bool = false
    @State private var alerta1 = false
    @State private var alerta2 = false
    @State private var alerta3 = false
    
    @State private var intentos = 5
    
    @State var num1 : Int = 0
    @State var num2 : Int = 0
    @State var num3 : Int = 0
    @State var num4 : Int = 0
    @State var num5 : Int = 0
    
    @State private var showingAlert = false
    
    var baraja = [
                  "trebol A",
                  "corazones A",
                  "picas A",
                  "diamantes A",
                  "corazones 2",
                  "corazones 3",
                  "corazones 4",
                  "corazones 5",
                  "corazones 6",
                  "corazones 7",
                  "corazones 8",
                  "corazones 9",
                  "corazones 10",
                  "corazones J",
                  "corazones Q",
                  "corazones K",
                  "trebol J",
                  "trebol Q",
                  "trebol K",
                  "trebol 2",
                  "trebol 3",
                  "trebol 4",
                  "trebol 5",
                  "trebol 6",
                  "trebol 7",
                  "trebol 8",
                  "trebol 9",
                  "picas J",
                  "picas Q",
                  "picas K",
                  "picas 2",
                  "picas 3",
                  "picas 4",
                  "picas 5",
                  "picas 6",
                  "picas 7",
                  "picas 8",
                  "picas 9",
                  "picas 10",
                  "diamantes J",
                  "diamantes Q",
                  "diamantes K",
                  "diamantes 2",
                  "diamantes 3",
                  "diamantes 4",
                  "diamantes 5",
                  "diamantes 6",
                  "diamantes 7",
                  "diamantes 8",
                  "diamantes 9",
                  "diamantes 10"
    ]
    
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 40) {
                Image("vegas")
                    .resizable()
                    .frame(width: 300, height: 160)
                    .cornerRadius(12)
                
                Text("Apuesta actual: $\(apuesta)")
                    .font(.title)
                    .foregroundColor(.white)
                
                HStack {
                    Image(baraja[num1])
                        .resizable()
                        .frame(width: 70, height: 120)
                    Image(baraja[num2])
                        .resizable()
                        .frame(width: 70, height: 120)
                    Image(baraja[num3])
                        .resizable()
                        .frame(width: 70, height: 120)
                    Image(baraja[num4])
                        .resizable()
                        .frame(width: 70, height: 120)
                    Image(baraja[num5])
                        .resizable()
                        .frame(width: 70, height: 120)
                    
                }
                
                VStack (alignment: .center, spacing: 10 ) {
                    Button {
                        
                        //Generar numero y luego restar, si el numero de intentos es igual a cero, perdiste!
                        if intentos > 0 {
                            num1 = Int.random(in: 0..<baraja.count-1)
                            num2 = Int.random(in: 0..<baraja.count-1)
                            num3 = Int.random(in: 0..<baraja.count-1)
                            num4 = Int.random(in: 0..<baraja.count-1)
                            num5 = Int.random(in: 0..<baraja.count-1)
                            if num1 == 0 || num1 == 1 || num2 == 0 || num2 == 1 || num1 == 2 || num1 == 3 {
//                                || num3 == 0 || num4 == 0 || num5 == 0 {
                                print("Ganaste!")
                                alerta1 = true
                            }
                            intentos -= 1
                        } else {
                            print("Perdiste")
                            alerta2 = true
                        }
                        
                        
                        
                    } label: {
                        Text("JUGAR")
                            .frame(maxWidth:.infinity, maxHeight: 30)
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red
                                .cornerRadius(20)
                                .shadow(radius: 12)
                            )
                    }
                    
                    NavigationLink {
                        RealizarApuesta(apuesta: $apuesta, cantidadApostar: "")
                    } label: {
                        Text("Apostar".uppercased())
                            .frame(maxWidth:.infinity, maxHeight: 30)
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black
                                .cornerRadius(20)
                            )
                    }
                    
                    HStack {
                        NavigationLink {
                            JuegosGanados()
                        } label: {
                            Text("Ganados")
                                .frame(maxWidth:.infinity, maxHeight: 30)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .background(
                                    Color.purple
                                        .cornerRadius(20)
                                )
                        }

                        
                        NavigationLink {
                            Reglas()
                        } label: {
                            Text("Reglas")
                                .frame(maxWidth:.infinity, maxHeight: 30)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .background(
                                    Color.gray
                                        .cornerRadius(20)
                                )
                        }

                    }
                    
                
                    
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                
                Spacer()
            }//Vstack
            .alert(isPresented: Binding(
                get: { alerta1 || alerta2 || alerta3 },
                set: { alerta1 = $0; alerta2 = $0; alerta3 = $0 })
            ) {
                alerta()
            }

            
            
            .background(
                Image("mesa")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
        }
        .accentColor(.white)
    }
    
    // MARK:  Functions
    func alerta() -> Alert {
        if alerta1 {
            return Alert(title: Text("Felicidades"), message: Text("Ganaste: \(apuesta)"), dismissButton: .default(Text("Aceptar")) {
                apuesta = apuesta + apuesta
                intentos = 5
            })
        } else if alerta2 {
            return Alert(title: Text("¡Lo siento!"), message: Text("Has perdido: \(apuesta)"), dismissButton: .default(Text("Aceptar")) {
                apuesta = 0
                intentos = 5
            })
        } else if alerta3 {
            return Alert(title: Text("Alerta 3"), message: Text("¡Esto es la alerta 3!"), dismissButton: .default(Text("OK")) {
                print("Do something")
            })
        }
        
        // Si ninguna alerta está activa, se devuelve una alerta vacía
        return Alert(title: Text("Error"), message: Text("No se puede mostrar la alerta."), dismissButton: .default(Text("OK")))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
