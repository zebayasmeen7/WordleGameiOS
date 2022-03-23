//
//  WordleGameApp.swift
//  WordleGame
//
//  Created by Neosoft on 22/03/22.
//

import SwiftUI

@main
struct WordleGameApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            WordleGame()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        initializeAllowedWords()
        return true
    }
    
    /// Initialize model of all the allowed words  Text conversion code from ->
    private func initializeAllowedWords() {
        
        let path = Bundle.main.path(forResource: "allowedWords", ofType: "txt") // file path
        let allowedWordsArray = try? String(contentsOfFile: path!, encoding: String.Encoding.utf8).split(separator: "\n")
        ///Conver to hash table
        let allowedWordsHashTable = Set(allowedWordsArray!)
        
        ///initialise global model
        AllowedWordsModel.allAllowedWords = allowedWordsHashTable
        
    }
}
