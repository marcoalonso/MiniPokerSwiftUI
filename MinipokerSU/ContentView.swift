//
//  ContentView.swift
//  MinipokerSU
//
//  Created by marco rodriguez on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num1 : Int = 0
    @State var num2 : Int = 0
    @State var num3 : Int = 0
    @State var num4 : Int = 0
    @State var num5 : Int = 0
    
    @State private var showingAlert = false
    
    var baraja = ["reverso",
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
        
        
        
        ZStack {
            VStack(alignment: .center, spacing: 40) {
                Image("vegas")
                    .resizable()
                    .frame(width: 300, height: 160)
                
                
                HStack {
                    Image(baraja[num1])
                        .resizable()
                        .frame(width: 60, height: 100)
                    Image(baraja[num2])
                        .resizable()
                        .frame(width: 60, height: 100)
                    Image(baraja[num3])
                        .resizable()
                        .frame(width: 60, height: 100)
                    Image(baraja[num4])
                        .resizable()
                        .frame(width: 60, height: 100)
                    Image(baraja[num5])
                        .resizable()
                        .frame(width: 60, height: 100)
                    
                }
                
                VStack (alignment: .center, spacing: 10 ) {
                    Button {
                        num1 = Int.random(in: 1..<baraja.count-1)
                        num2 = Int.random(in: 1..<baraja.count-1)
                        num3 = Int.random(in: 1..<baraja.count-1)
                        num4 = Int.random(in: 1..<baraja.count-1)
                        num5 = Int.random(in: 1..<baraja.count-1)
                        
                    } label: {
                        Text("JUGAR")
                            .frame(maxWidth:.infinity, maxHeight: 40)
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red
                                .cornerRadius(20)
                                .shadow(radius: 12)
                            )
                    }.padding(.top, 20)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                    Button {
                        //Action
                        
                    } label: {
                        Text("Apostar".uppercased())
                            .frame(maxWidth:.infinity, maxHeight: 40)
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black
                                .cornerRadius(20)
                                .shadow(radius: 12)
                            )
                    }.padding(.leading, 50)
                        .padding(.trailing, 50)
                }
                
                Spacer()
            }
            
        }.background(
            Image("mesa")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
