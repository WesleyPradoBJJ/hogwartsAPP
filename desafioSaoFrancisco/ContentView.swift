//
//  ContentView.swift
//  desafioSaoFrancisco
//
//  Created by Wesley Prado on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                BackgroundView()
                VStack (spacing: 65){
                   
                    Group{
                        
                        Text("What is your house in Hogwarts?")
                            .bold()
                            .foregroundColor(Color("gold"))
                            .font(.custom("Harry P", size: 65))
                            .multilineTextAlignment(.center)
                        
                        Image("hogwarts")
            
                        NavigationLink(destination: SelectorHatView(), label: {
                          
                            Text ("Start!")
                                .bold()
                                .frame(width: 150, height: 70)
                                .background(Color("brown2"))
                                .cornerRadius(15)
                                .foregroundColor(Color("gold"))
                                .font(.custom("Harry P", size: 60))
                        })
                    }
                }
            }
        }
        .tint(.yellow)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct BackgroundView: View {
        var body: some View {
            LinearGradient(gradient: Gradient(colors:[ .brown,.black,.brown]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        }
    }
}
