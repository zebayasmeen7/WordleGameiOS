//
//  SecretWordModel.swift
//  WordleGame
//
//  Created by Neosoft on 23/03/22.
//

import Foundation

class SecretWordModel {
    
    static let mainSecretWordInstance = SecretWordModel()
    
//  This is just the default value
    var secretWord: Array<String> = ["C","L","E","A","R"] {
        didSet {
            secretWordString = secretWord.convertArrayToString()
        }
    }
    
    var randomWords: Array<Array<String>> = [["C","L","I","C","K"],["L","I","G","H","T"],["O","T","H","E","R"],["P","H","O","N","E"],["L","U","N","C","H"],["S","O","L","I","D"]]
    
    var secretWordString: String = "CLEAR"
    
    /// Changes the secret word for the user when he presses play
    /// - Parameter completion: returns weather changing word was succesful
    func generateNewWord(completion: @escaping (Bool) -> Void) {
        
        
//      random element only returns nil if collection is empty, which should never be the case since we initialized it with 4 values
        secretWord = randomWords.randomElement()!
        print("changed Word: \(secretWord)")
        completion(true)
    }
    
}
