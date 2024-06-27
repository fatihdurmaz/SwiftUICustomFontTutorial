//
//  CustomFontTutorialApp.swift
//  CustomFontTutorial
//
//  Created by Fatih Durmaz on 24.06.2024.
//

import SwiftUI
import UIKit

@main
struct CustomFontTutorialApp: App {
    
    
    
    init() {
        let navNarAppearance = UINavigationBarAppearance()
        navNarAppearance.largeTitleTextAttributes = [.font : UIFont(name: "Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)!]
        navNarAppearance.titleTextAttributes = [.font : UIFont(name: "Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .headline).pointSize)!]
        
        let backButtonAppearance = UIBarButtonItemAppearance(style: .plain)
        backButtonAppearance.normal.titleTextAttributes = [.font : UIFont(name: "Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .body).pointSize)!]
        navNarAppearance.backButtonAppearance = backButtonAppearance
        
        UINavigationBar.appearance().standardAppearance = navNarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navNarAppearance
        UINavigationBar.appearance().compactAppearance = navNarAppearance

    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.font, Font.custom("Ubuntu-Italic", size: UIFont.preferredFont(forTextStyle: .body).pointSize))
        }
    }
}

