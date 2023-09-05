//
//  CardOne.swift
//  CardKit
//
//  Created by Damon gonzalez on 9/4/23.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CardOne: View {
    private var cardTitle:String = "Lorem ipsum dolor sit"
    private var cardColorElement:Color = .cardRed
    private var cardColorElementBG:Color {
        get {
            switch cardColorElement {
            case .cardRed:
                return .cardRedBG
            case .cardBlue:
                return .cardBlueBG
            case .cardGreen:
                return .cardGreenBG
            case .cardYellow:
                return .cardYellowBG
            case .cardPurple:
                return .cardPurpleBG
            case .cardBlack:
                return .cardBlackBG
            case .cardWhite:
                return .cardWhiteBG
            default:
                return .gray
            }
        }
    }
    private var cardColorManaAmount:Int = 2
    private var cardColorlessManaAmount:Int = 2
    private var cardArt:String = ""
    private var cardType:String = "Lorem"
    private var cardSubType:String = "Ipsum"
    private var cardExpansionSymbol:String = ""
    private var cardTextBox:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel facilisis urna. Nam sit amet vulputate eros. Quisque tempus, quam ut euismod maximus, massa magna placerat nulla, vel posuere arcu.- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel facilisis urna. Nam sit amet vulputate eros. Quisque tempus, quam ut euismod maximus, massa magna placerat nulla, vel posuere arcu."
    private var cardPower:Int = 1
    private var cardToughness:Int = 1
    public var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: 420,maxHeight: 650)
                .cornerRadius(15)
            Rectangle()
                .frame(maxWidth: 380,maxHeight: 610)
                .cornerRadius(15)
                .foregroundColor(cardColorElementBG)
            VStack(spacing:0) {
                //NAME - MANA
                ZStack {
                    Rectangle()
                        .frame(maxWidth: 375,maxHeight: 40)
                        .cornerRadius(15)
                        .foregroundColor(cardColorElement)
                        .shadow(color: .black, radius: 5.0)
                    Rectangle()
                        .frame(maxWidth: 365,maxHeight: 30)
                        .cornerRadius(10)
                        .foregroundColor(.areaBg)
                    Text(cardTitle)
                        //.monospaced().bold()
                        .aspectRatio(contentMode: .fit)
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                    //.border(Color.green)
                        .frame(maxWidth: 200, alignment: .leading)
                    //.border(Color.red)
                        .offset(x:-75)
                    //CARD MANA
                    switch cardColorManaAmount + cardColorlessManaAmount {
                    case 1:
                        if cardColorManaAmount == 1 {
                            Circle()
                                .frame(maxWidth: 20)
                                .foregroundColor(cardColorElement)
                                .offset(x:162)
                        }
                        else {
                            Circle()
                                .frame(maxWidth: 20)
                                .foregroundColor(.gray)
                                .offset(x:162)
                        }
                    case 2:
                        if cardColorManaAmount == 2 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:148)
                        }
                        else if cardColorManaAmount == 1 && cardColorlessManaAmount == 1 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:148)
                        }
                        else {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                            }
                            .offset(x:148)
                        }
                    case 3:
                        if cardColorManaAmount == 3 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:134)
                        }
                        else if cardColorManaAmount == 2 && cardColorlessManaAmount == 1 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:134)
                        }
                        else if cardColorManaAmount == 1 && cardColorlessManaAmount == 2 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:134)
                        }
                        else {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                            }
                            .offset(x:134)
                        }
                    case 4:
                        if cardColorManaAmount == 4 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:120)
                        }
                        else if cardColorManaAmount == 3 && cardColorlessManaAmount == 1 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:120)
                        }
                        else if cardColorManaAmount == 2 && cardColorlessManaAmount == 2 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:120)
                        }
                        else if cardColorManaAmount == 1 && cardColorlessManaAmount == 3 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:120)
                        }
                        else {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                            }
                            .offset(x:120)
                        }
                    case 5:
                        if cardColorManaAmount == 5 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.red)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:106)
                        }
                        else if cardColorManaAmount == 4 && cardColorlessManaAmount == 1 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:106)
                        }
                        else if cardColorManaAmount == 3 && cardColorlessManaAmount == 2 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:106)
                        }
                        else if cardColorManaAmount == 2 && cardColorlessManaAmount == 3 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:106)
                        }
                        else if cardColorManaAmount == 1 && cardColorlessManaAmount == 4 {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(cardColorElement)
                            }
                            .offset(x:106)
                        }
                        else {
                            HStack {
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(maxWidth: 20)
                                    .foregroundColor(.gray)
                            }
                            .offset(x:106)
                        }
                    default:
                        Circle()
                            .frame(maxWidth: 20)
                            .foregroundColor(.gray)
                            .offset(x:162)
                    }
                }
                //ART
                ZStack {
                    Rectangle()
                        .frame(maxWidth: 365,maxHeight: 300)
                        .cornerRadius(15)
                        .foregroundColor(cardColorElement)
                        .shadow(color: .black, radius: 5.0)
                    Rectangle()
                        .frame(maxWidth: 350,maxHeight: 285)
                        .cornerRadius(15)
                        .foregroundColor(.areaBg)
                    Image(cardArt)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 350,maxHeight: 285)
                        .cornerRadius(15)
                }
                //TYPE - SET
                ZStack {
                    Rectangle()
                        .frame(maxWidth: 375,maxHeight: 40)
                        .cornerRadius(15)
                        .foregroundColor(cardColorElement)
                        .shadow(color: .black, radius: 5.0)
                    Rectangle()
                        .frame(maxWidth: 365,maxHeight: 30)
                        .cornerRadius(10)
                        .foregroundColor(.areaBg)
                    Text(cardType + " - " + cardSubType)
                        //.monospaced().bold()
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                    //.border(Color.green)
                        .frame(maxWidth: 200, alignment: .leading)
                    //.border(Color.red)
                        .offset(x:-75)
                    Image(cardExpansionSymbol)
                        .resizable()
                        .scaledToFit()
                    //.border(Color.red)
                        .frame(maxWidth:40,maxHeight: 26, alignment: .center)
                    //.border(Color.green)
                        .offset(x:155)
                }
                //TEXT
                ZStack {
                    Rectangle()
                        .frame(maxWidth: 365,maxHeight: 215)
                        .cornerRadius(15)
                        .foregroundColor(cardColorElement)
                        .shadow(color: .black, radius: 5.0)
                    Rectangle()
                        .frame(maxWidth: 350,maxHeight: 200)
                        .cornerRadius(15)
                        .foregroundColor(.areaBg)
                    Text(cardTextBox)
                        //.monospaced().bold()
                        .minimumScaleFactor(0.01)
                        .lineLimit(10)
                    //.border(Color.green)
                        .frame(maxWidth: 340,maxHeight: 160, alignment: .leading)
                    //.border(Color.red)
                }
            }
            //LIFE - ATTACK
            ZStack {
                Rectangle()
                    .frame(maxWidth: 60,maxHeight: 35)
                    .cornerRadius(8)
                    .foregroundColor(cardColorElement)
                    .shadow(color: .black, radius: 5.0)
                Rectangle()
                    .frame(maxWidth: 55,maxHeight:30)
                    .cornerRadius(5)
                    .foregroundColor(.areaBg)
                Text("\(cardPower)" + "/" + "\(cardToughness)")
                    //.font(.system(size: 15).monospaced().bold())
                    .lineLimit(1)
                    .foregroundColor(.black)
            }
            .offset(x:165,y:295)
        }
    }
}







@available(iOS 13.0, *)
public extension Color {
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
    static let areaBg = Color(red: 241.0 / 255, green: 236.0 / 255, blue: 236.0 / 255)
    static let cardBlue = Color(red: 106.0 / 255, green: 127.0 / 255, blue: 192.0 / 255)
    static let cardRed = Color(red: 192.0 / 255, green: 106.0 / 255, blue: 112.0 / 255)
    static let cardGreen = Color(red: 111.0 / 255, green: 192.0 / 255, blue: 106.0 / 255)
    static let cardYellow = Color(red: 202.0 / 255, green: 174.0 / 255, blue: 55.0 / 255)
    static let cardPurple = Color(red: 156.0 / 255, green: 106.0 / 255, blue: 192.0 / 255)
    static let cardBlack = Color(red: 103.0 / 255, green: 103.0 / 255, blue: 103.0 / 255)
    static let cardWhite = Color(red: 255.0 / 255, green: 255.0 / 255, blue: 255.0 / 255)
    static let cardBlueBG = Color(red: 40.0 / 255, green: 59.0 / 255, blue: 142.0 / 255)
    static let cardRedBG = Color(red: 142.0 / 255, green: 40.0 / 255, blue: 41.0 / 255)
    static let cardGreenBG = Color(red: 51.0 / 255, green: 142.0 / 255, blue: 40.0 / 255)
    static let cardYellowBG = Color(red: 142.0 / 255, green: 123.0 / 255, blue: 40.0 / 255)
    static let cardPurpleBG = Color(red: 96.0 / 255, green: 40.0 / 255, blue: 142.0 / 255)
    static let cardBlackBG = Color(red: 59.0 / 255, green: 59.0 / 255, blue: 59.0 / 255)
    static let cardWhiteBG = Color(red: 217.0 / 255, green: 217.0 / 255, blue: 217.0 / 255)
}

@available(iOS 13.0, *)
struct CardOne_Previews: PreviewProvider {
    static var previews: some View {
        CardOne()
    }
}
