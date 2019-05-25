# MTLetterImage
This is code if you want to create a UIImage of letters, This code takes the first letter of first and last word, if you want only first latter from string then change the DataProvider setting. Default Data is Set.

## Requirements
- iOS 8.0+
- Xcode 10+
- Swift 4.2

### Code

Get Image from a string. 
``` swift
    
   let size = imageViewBothWords.frame.size // current imageViewSize.
    // for Both First & Last
    let dataProviderBoth = DataProvider(
      name: "Mohammad Tahir",
      imageSize: size
    ) // Create DataProvider.
    
    self.imageViewBothWords.image = MTLetterImage.imageWith(dataProvider: dataProviderBoth) // image.
    
    // First Word
    
    let dataProviderFirst = DataProvider(
      name: "Mohammad Tahir",
      backgroundColor: .red,
      imageSize: size,
      wordsType: .first
    ) // Create DataProvider.
    
    self.imageViewFirstWord.image = MTLetterImage.imageWith(dataProvider: dataProviderFirst) // image.
    
    // Last word
    let dataProviderLast = DataProvider(
      name: "Mohammad Tahir",
      backgroundColor: .orange,
      textColor: .white,
      imageSize: size,
      font: UIFont.systemFont(ofSize: 22, weight: .bold),
      wordsType: .last
    ) // Create DataProvider.
    
    self.imageViewLastWord.image = MTLetterImage.imageWith(dataProvider: dataProviderLast) // image.

```

``` swift

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
  
```


## Result 
<a href="https://ibb.co/JqZRHHy"><img src="https://i.ibb.co/nBpsjjn/Simulator-Screen-Shot-i-Phone-XS-Max-2019-03-23-at-02-13-58.png" alt="Latter Image" border="0"></a>

## Communication

- If you found a bug, please open an issue. :bow:
- Also, if you have a feature request, please open an issue. :thumbsup:
- If you want to contribute, submit a pull request.:muscle:


## Created by
Mohd Tahir, [@Mohd_Tahir99](https://twitter.com/Mohd_Tahir99)
