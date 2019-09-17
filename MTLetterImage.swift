//
//  MTLetterImage.swift
//  MTLetterImage
//
//  Created by Mohammmad Tahir on 23/03/19.
//  Copyright © 2019 Mohammad Tahir. All rights reserved.
//

import UIKit

/// Data Provider
public struct DataProvider {
  
  /// Latter Type
  enum WordsType {
    case first
    case last
    case both
  }
  
  /// String text for image
  public var name: String
  
  /// Image Background Color
  public var backgroundColor: UIColor
  
  /// Image Text Color
  public var textColor: UIColor
  
  /// Image Size
  public var imageSize: CGSize
  
  /// Text Font
  public var font: UIFont
  
  /// String Separater
  public var componentSeparatedBy: String
  
  /// Latter Type
  var wordsType: WordsType
  
  /// Initializer with default values
  init(name: String = "Mohammad Tahir",
       backgroundColor: UIColor = .blue,
       textColor: UIColor = .white,
       imageSize: CGSize = CGSize(width: 50.0, height: 50.0),
       font: UIFont = UIFont.systemFont(ofSize: 26, weight: .bold),
       componentSeparatedBy: String = " ", wordsType: WordsType = .both) {
    
    self.name = name
    self.backgroundColor = backgroundColor
    self.textColor = textColor
    self.imageSize = imageSize
    self.font = font
    self.componentSeparatedBy = componentSeparatedBy
    self.wordsType = wordsType
  }
}

/// LetterImageGenerator

public struct MTLetterImage {
  
  /**
   LetterImageGenerator will generate the textbased Image from String, just pass your text and choose your style by DataProvider.
   - parameters:
   - name: The String return image with first & last & both, chose wordsType default is .both
   - backgroundColor: The BackgroundColor for image. default is '.blue'
   - textColor: The TextColor for image text. default is '.white'
   - imageSize: The ImageSize for create size of image. default is '(50, 50)'
   - font: The Font for Text. default is '.20(.bold)'
   - componentSeparatedBy: The ComponentSeparatedBy for separate the words. default is " "
   - wordsType: The wordsType choosed first/last/both default is .both
   - Returns: Image
   */
  public static func imageWith(dataProvider: DataProvider) -> UIImage? {
    
    let frame = CGRect(x: 0, y: 0, width: dataProvider.imageSize.width, height: dataProvider.imageSize.height)
    let nameLabel = UILabel(frame: frame)
    nameLabel.textAlignment = .center
    nameLabel.backgroundColor = dataProvider.backgroundColor
    nameLabel.textColor = dataProvider.textColor
    nameLabel.font = dataProvider.font
    var initials = ""
    let initialsArray = dataProvider.name.components(separatedBy: dataProvider.componentSeparatedBy)
    if initialsArray.isEmpty {
      return nil
    }
    // First Word
    switch dataProvider.wordsType {
    case .first:
      MTLetterImage.firstWord(initials: &initials, initialsArray: initialsArray)
    case .last:
      // Last Word
      MTLetterImage.lastWord(initials: &initials, initialsArray: initialsArray)
    case .both:
      // Both first & Last
      MTLetterImage.firstWord(initials: &initials, initialsArray: initialsArray)
      MTLetterImage.lastWord(initials: &initials, initialsArray: initialsArray)
    }
    
    nameLabel.text = initials
    /// Generate Image
    UIGraphicsBeginImageContext(frame.size)
    if let currentContext = UIGraphicsGetCurrentContext() {
      nameLabel.layer.render(in: currentContext)
      let nameImage = UIGraphicsGetImageFromCurrentImageContext()
      return nameImage
    }
    return nil
  }
  
  /// Get The First Word from string
  private static func firstWord(initials: inout String, initialsArray: [String]) {
    if let firstWord = initialsArray.first, let firstLetter = firstWord.first {
              initials += String(firstLetter).capitalized
    }
  }
  
  /// Get The last Word from string
  private static func lastWord(initials: inout String, initialsArray: [String]) {
    if initialsArray.count > 1, let lastWord = initialsArray.last, let lastLetter = lastWord.first {
             initials += String(lastLetter).capitalized
    }
  }
}
