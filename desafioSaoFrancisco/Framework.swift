//
//  Framework.swift
//  desafioSaoFrancisco
//
//  Created by Wesley Prado on 05/04/2023.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let text: String
    let imageName: String
}


struct MockData {
    
    static let sampleFramework = Framework(text: "Humm... Let me think...",
                                           imageName: "casashp")
    
    
    
    static let frameworks = [
        Framework(text: "Gryffindor!!!",
                  imageName: "grifinoria"),
        
        Framework(text: "Ravenclaw!!!",
                  imageName: "corvinal"),
        
        Framework(text: "Hufflepuff!!!",
                  imageName: "lufalufa"),
        
        Framework(text: "Slytherin!!!",
                  imageName: "sonserina")
    ]
}

