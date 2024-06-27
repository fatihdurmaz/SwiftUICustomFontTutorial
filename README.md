# SwiftUI Custom Font Tutorial
![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS17%20-red.svg)
![Platform](https://img.shields.io/badge/SwiftUI-5-green.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

[![SwiftUI Custom Font Tutorial](https://img.youtube.com/vi/D5P8c45e_3M/0.jpg)](https://www.youtube.com/watch?v=D5P8c45e_3M)


1. We import the font files into our project and define them in the Info.plist file.
    > ***Fonts provided by application*** We should add all variations of the font (bold, italic, etc.) along with their file extensions under the key.
    > 
2. We use the .font environment to change the font across the application.
    
    ```swift
    ContentView()
        .environment(\.font, Font.custom("Ubuntu", size: 17)
        // size: UIFont.preferredFont(forTextStyle: .body).pointSize)
        // We can also use the default body font size.
    }
    ```
    
3. Navigation Bar Font
    
    ```swift
    init() { // App dosyasında
    	let navBarAppearance = UINavigationBarAppearance()
    	navBarAppearance.largeTitleTextAttributes = [.font: UIFont(name: "Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)!] // default
    	navBarAppearance.titleTextAttributes = [.font: UIFont(name: "Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .headline).pointSize)!] // default
    	UINavigationBar.appearance().standardAppearance = navBarAppearance
    	UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    	UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    ```
    
4. Back Button Font
    
    ```swift
    init() {
      let navBarAppearance = UINavigationBarAppearance()
      let backButtonAppearance = UIBarButtonItemAppearance(style: .plain)
      backButtonAppearance.normal.titleTextAttributes = [.font: UIFont(name: "Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .body).pointSize)!] // default
      navBarAppearance.backButtonAppearance = backButtonAppearance
              
      UINavigationBar.appearance().standardAppearance = navBarAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
      UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    ```
    
    ***BONUS - Font Extension***
    
    ```swift
    extension Font {
        public static var largeTitle: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
        }
        
        public static var title1: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .title1).pointSize)
        }
        
        public static var title2: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .title2).pointSize)
        }
        
        public static var title3: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .title3).pointSize)
        }
        
        public static var headline: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .headline).pointSize)
        }
        
        public static var subheadline: Font {
            return Font.custom("Ubuntu-Light", size: UIFont.preferredFont(forTextStyle: .subheadline).pointSize)
        }
        
        public static var body: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
        }
        
        public static var callout: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .callout).pointSize)
        }
        
        public static var footnote: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .footnote).pointSize)
        }
        
        public static var caption: Font {
            return Font.custom("Ubuntu-Regular", size: UIFont.preferredFont(forTextStyle: .caption1).pointSize)
        }
        
        public static func system(size: CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font {
            var font = "Ubuntu-Regular"
            switch weight {
            case .bold: font = "Ubuntu-Bold"
            case .regular: font = "Ubuntu-Regular"
            case .light: font = "Ubuntu-Light"
            case .medium: font = "Ubuntu-Medium"
            case .semibold: font = "Ubuntu-Medium"
            case .heavy: font = "Ubuntu-Bold"
            default: font = "Ubuntu-Regular"
            }
            return Font.custom(font, size: size)
        }
        
        public static func customHeadlineFont(size: CGFloat) -> Font {
            return Font.custom("Ubuntu-Regular", size: size)
        }
    }
    ```
