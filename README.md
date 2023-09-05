# CardUIOne

Add MTG-esque cards to your project.

Create stunning MTG-esque cards inside your project for fun, fleshing out ideas, or even to just understand the anatomy of a Tradeable Card Game(TCG).

## Contents
- [Add Package](https://github.com/janzomon/CardUIOne#package)
- [Basic Usage](https://github.com/janzomon/CardUIOne#basic-usage)
- [Properties](https://github.com/janzomon/CardUIOne#properties)
- [Future](https://github.com/janzomon/CardUIOne#future)
- [Feedback](https://github.com/janzomon/CardUIOne#feedback)


## Package
**For Xcode Projects**

File > Swift Packages > Add Package Dependency: [https://github.com/janzomon/CardUIOne.git](https://github.com/janzomon/CardUIOne.git)

## Basic Usage

1. Add package to project
2. `Import CardUIOne`
3. Call `CardOne()` , hold option and press return to populate all properties.
4. Customize each property to generate a CardOne View you like.

## Properties

1. `public var cardTitle:String`
    - `String` for Name of Card
3. `public var cardColorElement:Color`
    - Use created  Colors in extension to choose card element
    - *Example:* `cardBlue` `cardRed` `cardGreen` `cardYellow` `cardPurple` `cardBlack` `cardWhite`
4. `public var cardColorElementBG:Color`
    - This is a `get()` property that retrieves a specific color from color extension based on selected color from `public var cardColorElement:Color`
5. `public var cardColorManaAmount:Int`
    - `Int` amount for card color/element
6. `public var cardColorlessManaAmount:Int`
    - `Int` amount for colorless element
7. `public var cardArt:String`
    - `String` for name of image asset in project
    - Image selected is a representation for `public var cardTitle:String`
8. `public var cardType:String`
    - `String` for card type. *Example:* `"Creature"`
9. `public var cardSubType:String`
    - `String` for card subtype.
    - *Example:* `"Crab"` or `"Merfolk"`
10. `public var cardExpansionSymbol:String`
    - `String` for name of image asset in project
    - Image selected is a representation for Card Set
11. `public var cardRarity:Rarity`
    - Use created enum to choose rarity of card.
    - *Example:* `.common` `.uncommon` `.rare` `.mythicRare`
12. `public var cardTextBox:String`
    - `String` for block of text describing what the card does.
    - `.lineLimit(10)`
    - *Example:* "Whenever a land enters the battlefield under your control, target player mills three cards."
13. `public var cardFlavorText:String?`
    - `String` for block of text describing lore of card.
    - `.lineLimit(2)`
    - *Example:* "Hedrons perplex minds both great and small."
    - This property is `optional`
14. `public var cardPower:Int`
    - `Int` for how much damage a card does
15. `public var cardToughness:Int`
    - `Int` for how much life/defense a card has
16. `public var cardHolo:Bool`
    - `true` or `false` selection if card image should be Holographic
17. `@State private var animateGradient:Bool = false`
    - An `@State` to animate Holographic image when `public var cardHolo:Bool` is set to `true`
18. `public var cardCollectionNumber:Int`
    - `Int` representing the number of card in set
19. `public var cardCollectionNumberMax:Int`
    - `Int` representing the maximum number in card set
20. `public var cardArtist:String`
    - `String` to present the name of artist of image selected in `public var cardArt:String`
21. `public var cardYear:Int`
    - `Int` representing year card was manufactured
22. `public var cardCompanyName:String`
    - `String` to present company that created card
23. `public var website:String?`
    - `String` to present website of company that created card
    - This property is `optional`

 ## Future

 1. Card Flipping Animation
 2. More Card Formats to choose from
 3. Potential for card animation options

## Feedback

Please feel FREE to conatct me with feedback or anything else here on github or my email [damon.r.gonzalez@gmail.com](mailto:damon.r.gonzalez@gmail.com)
