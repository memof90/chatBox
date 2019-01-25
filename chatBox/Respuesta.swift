//
//  Respuesta.swift
//  chatBox
//
//  Created by Memo Figueredo on 1/25/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation

struct Respuesta {
    
    func respondeme(question: String)-> String {
        let casedQuestion = question.lowercased()
        
        if casedQuestion == "hello there"{
            return "Why, hello there"
        } else if casedQuestion == "where are the cookies" {
            return "In the cookies jar"
        } else if casedQuestion.hasPrefix("where"){
            return "To the North"
        } else {
            let numeroDefecto = question.utf8CString.count % 3
            
            if numeroDefecto == 0 {
                return "That really depends"
            } else if numeroDefecto == 1 {
                return "Ask me again tomorow"
            } else {//2
                
                return "I`m not sure, I understand"
            }
        }
        
        
    }
}
