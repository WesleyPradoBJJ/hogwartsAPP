//
//  chapeuSeletorView.swift
//  desafioSaoFrancisco
//
//  Created by Wesley Prado on 03/04/2023.
//

import SwiftUI


struct SelectorHatView: View {
    @State var counter = 0
    @State var selectorHatText = "Hummm... Let me think..."
    @State var selectorHatImage = "casashp"
    
    var body: some View {
        ZStack{
            
            SelectorHatBackgroundView()
            Group{
                VStack {
                    
                    Text("Touch the Sorting Hat and let him decide your future!")
                        .bold()
                        .foregroundColor(Color("gold"))
                        .font(.custom("Harry P", size: 49))
                        .multilineTextAlignment(.center)
                    
                    
                    Button(action: {
                        hatAction()
                    }, label: {
                        Image("chapeuSeletor")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250, alignment: .center)
                        
                    })
                    
                    VStack{
                        Text(selectorHatText)
                            .bold()
                            .foregroundColor(Color.brown)
                            .font(.custom("Harry P", size: 35))
                            .multilineTextAlignment(.center)
                        Image(selectorHatImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 340, height: 280, alignment: .center)
                    }
                    
                    
                }
            }
            
        }
    }
    
    func hatAction() {
        if counter == 0 {
            selectorHatText = "Gryffindor!!!"
            selectorHatImage = "grifinoria"
        }else if counter == 1 {
            selectorHatText = "Hummm... Let me think..."
            selectorHatImage = "casashp"
        }else if counter == 2 {
            selectorHatText = "Hufflepuff!!!"
            selectorHatImage = "lufalufa"
        }else if counter == 3 {
            selectorHatText = "Hummm... Let me think..."
            selectorHatImage = "casashp"
        }else if counter == 4 {
            selectorHatText = "Ravenclaw!!!"
            selectorHatImage = "corvinal"
        }else if counter == 5 {
            selectorHatText = "Hummm... Let me think..."
            selectorHatImage = "casashp"
        }else if counter == 6{
            selectorHatText = "Slytherin!!!"
            selectorHatImage = "sonserina"
        }else if counter == 7 {
            selectorHatText = "Hummm... Let me think..."
            selectorHatImage = "casashp"
            //counter = 0
            //return
        }
        
        if counter < 7 {
            counter += 1
        }else {
            selectorHatText = "Hummm... Let me think..."
            selectorHatImage = "casashp"
            //counter = 0
        }
    }
}

struct chapeuSeletorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectorHatView()
    }
}

struct SelectorHatBackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors:[ .brown,.black,.brown]),
                       startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}


