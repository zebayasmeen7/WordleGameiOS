//
//  AllowedWordsModel.swift
//  WordleGame
//
//  Created by Neosoft on 23/03/22.
//

import Foundation

struct AllowedWordsModel {
    static var allAllowedWords: Set<String.SubSequence> = []
    
    static func checkIfWordIsAllowed(word: Array<String>) -> Bool {
       
        var wordStr: String = ""
        
        for alphabet in word {
            wordStr.append(alphabet)
        }
        
        wordStr = wordStr.lowercased()

        if allAllowedWords.contains(Substring(wordStr)) {
            return true
        }
        else {
            return false
        }
    }
}
