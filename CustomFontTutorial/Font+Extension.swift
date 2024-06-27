//
//  Font+Extension.swift
//  CustomFontTutorial
//
//  Created by Fatih Durmaz on 27.06.2024.
//

import SwiftUI

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
