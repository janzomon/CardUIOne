//
//  File.swift
//  
//
//  Created by Damon gonzalez on 9/7/23.
//
import SwiftUI


public enum Beleren:String,CaseIterable {
case BelerenBold = "Beleren2016-Bold"
case BelerenSmallBold = "Beleren2016SmallCaps-Bold"
case BelerenSmallItalicBold = "Beleren2016SmallCaps-BoldItalic"
}


@available(iOS 13.0, *)
extension Font {
    @available(iOS 14.0, *)
    public static func beleren(_ beleren:Beleren,size:CGFloat)->Font{
        return .custom(beleren.rawValue,size:size,relativeTo:.body)
    }
}


public struct BelerenFont {
    public static func registerFonts(){
        Beleren.allCases.forEach {
            registerFont(bundle:.module,fontName:$0.rawValue,fontExtension:"ttf")
        }
    }
}



fileprivate func registerFont(bundle: Bundle, fontName: String, fontExtension:String) {
    guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
          let fontDataProvider = CGDataProvider (url: fontURL as CFURL) ,
          let font = CGFont(fontDataProvider) else {
        fatalError ("Couldn't create font from filename:" + fontName + "with extension " + fontExtension)
        
    }
    var error: Unmanaged<CFError>?
    CTFontManagerRegisterGraphicsFont(font, &error)
}
                    
