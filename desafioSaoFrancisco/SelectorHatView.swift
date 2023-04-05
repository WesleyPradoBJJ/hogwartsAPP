//
//  chapeuSeletorView.swift
//  desafioSaoFrancisco
//
//  Created by Wesley Prado on 03/04/2023.
//

import SwiftUI

//enum HogwartsCases {
//    case notSelected
//    case gryffindor
//    case ravenclaw
//    case hufflepuff
//    case slytherin
//}

struct SelectorHatView: View {
    @State var counter = 0
    @State var hatText: String? = String("Humm... Let me think...")
    @State var houseView: Image? = Image("hogwarts")
    
    var body: some View {
        ZStack{
            
            SelectorHatBackgroundView()
            
            VStack {
                
                Text("Touch the Sorting Hat and let him decide your future!")
                    .bold()
                    .foregroundColor(Color("gold"))
                    .font(.custom("Harry P", size: 49))
                    .multilineTextAlignment(.center)
                
                
                Button(action: {
                    if counter == 0 {
                        self.hatText = String("Gryffindor!!!")
                        self.houseView = Image("grifinoria")
                    }else if counter == 1 {
                        self.hatText = String("Ravenclaw!!!")
                        self.houseView = Image("corvinal")
                    }else if counter == 2 {
                        self.hatText = String("Hufflepuff!!!")
                        self.houseView = Image("lufalufa")
                    }else if counter == 3{
                        self.hatText = String("Slytherin!!!")
                        self.houseView = Image("sonserina")
                        counter = 0
                        return
                    }
                    
                    if counter < 3 {
                        counter += 1
                    }else {
                        counter = 0
                    }
                }, label: {
                    Image("chapeuSeletor")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250, alignment: .center)
                    
                })
                
                //hatText!
                    //.bold()
                    //.foregroundColor(Color("gold"))
                    //.font(.custom("Harry P", size: 20))
                    //.multilineTextAlignment(.center)
                
                houseView!
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 280, alignment: .center)
            }
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


