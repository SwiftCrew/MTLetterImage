# MTLetterImage
This is code if you want to create a UIImage of letters, This code takes the first letter of first and last word, if you want only first latter from string then change the DataProvider setting. This will reduce your project size. Default Data is Set.

### Code

Get Image from a string. 
``` swift
    let size = imageView.frame.size // current imageView size.
    let dataProvider = DataProvider(name: "Mohammad Tahir", imageSize: size) // Create DataProvider.
    self.imageView.image = MTLetterImage.imageWith(dataProvider: dataProvider) // image.
```

``` swift

  /// String text for image
  var name: String
  
  /// Image Background Color
  var backgroundColor: UIColor
  
  /// Image Text Color
  var textColor: UIColor
  
  /// Image Size
  var imageSize: CGSize
  
  /// Text Font
  var font: UIFont
  
  /// String Separater
  var componentSeparatedBy: String
  
```


## Result 
<a href="https://ibb.co/tCfJSZF"><img src="https://i.ibb.co/SvT32QG/Simulator-Screen-Shot-i-Phone-XS-Max-2019-03-23-at-02-01-59.png" alt="Latter Image" border="0"></a>

## Created by
Mohd Tahir, [@Mohd_Tahir99](https://twitter.com/Mohd_Tahir99)
