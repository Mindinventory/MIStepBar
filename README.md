# iOS-Step-Bar

<a href="https://docs.swift.org/swift-book/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/swift-5.0-brightgreen">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-red">
</a>
<a href="https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nikunjprajapati95/Reading-Animation&amp;utm_campaign=Badge_Grade"><img src="https://app.codacy.com/project/badge/Grade/44b16d6ddb96446b875d38bf2ec89b11"/></a>
<a href="https://github.com/parthgohel2810/TopTabBarView-Framework/blob/main/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/licence-MIT-orange">
</a>
<p></p> 

Good news for all our users out there! Now there are no boundaries to your convenience, **Step bar** is an iOS library that indicates steps in an animated way.
Swfit 5 is supported.

Checkout this super easy stepbar integration and example.!!! 

<p align="center">
  <img src="https://user-images.githubusercontent.com/84714866/168037057-fb6d82f4-0bdd-44cc-adf2-5f622853f658.gif">
</p>

## Installation
To install it, simply add the following line to your Podfile:

```ruby
pod 'MIStepBar', git: 'https://github.com/PiyushSelarka/MIStepBar.git', branch: 'main'
```
Then run `pod install` from the Example directory.

# Manually
You could directly copy and add the folder `MIStepBar` which contains 'StepBar.swift' file to your project.

## Usage

And then remember to `import MIStepBar` module before using it.

Change the class of a view from `UIStackView` to StepBar
```swift
@IBOutlet weak var stepBar: StepBar!
```
Programmatically:

```swift
override func viewDidLoad() {
  super.viewDidLoad()
    
  stepBar.stepTitles = ["Book Appointment", "Payment", "Confirmed"]
  stepBar.stepSubTitles = ["Dt 2020/11/02", "Dt 2020/11/04", "Dt 2020/11/06"]
  stepBar.stepSelectedImages = ["calendar","check","credit-card"]
}
```

# Customization Stroyboard and Xib (Optional)
After adding a `UIStackView` to Stroyboard or Xib, change its class to `StepBar`. Then you are able to config it as this demonstration:

![Screenshot 2022-06-15 at 12 13 03 PM](https://user-images.githubusercontent.com/42262083/173760338-3c3d4cce-d64f-4e9d-8eaa-509d10bee98c.png)

# Help
Hope you will enjoy it! Feel free to make an issue to me if you have any problems or need some improvements. And Please give the project a star if it's helpful to you, that's a great encouragement to me! ;)


## Requirements
- iOS 13.0+
- Xcode 13.0+


## 📱 Check out other lists of our Mobile UI libraries

<a href="https://github.com/Mindinventory?language=kotlin"> 
<img src="https://img.shields.io/badge/Kotlin-0095D5?&style=for-the-badge&logo=kotlin&logoColor=white"> </a>

<a href="https://github.com/Mindinventory?language=swift"> 
<img src="https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white"> </a>

<a href="https://github.com/Mindinventory?language=dart"> 
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"> </a>


<a href="https://github.com/Mindinventory/react-native-tabbar-interaction"> 
<img src="https://img.shields.io/badge/React_Native-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"> </a>

<br></br>

## 💻 Check out other lists of Web libraries

<a href="hhttps://github.com/Mindinventory?language=javascript"> 
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"></a>

<a href="https://github.com/Mindinventory?language=go"> 
<img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white"></a>

<a href="https://github.com/Mindinventory?language=python"> 
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"></a>

<br></br>

<h4><a href="https://www.mindinventory.com/whitepapers.php?utm_source=gthb&utm_medium=special&utm_campaign=folding-cell#demo"><u> 📝 Get FREE Industry WhitePapers →</u></a></h4>

## Check out our Work
<a href="https://dribbble.com/mindinventory"> 
<img src="https://img.shields.io/badge/Dribbble-EA4C89?style=for-the-badge&logo=dribbble&logoColor=white" /> </a>
<br></br>

## 📄 License
iOS-MiStepBar is [MIT-licensed](/LICENSE).


If you use our open-source libraries in your project, please make sure to credit us and Give a star to www.mindinventory.com

<a href="https://www.mindinventory.com/contact-us.php?utm_source=gthb&utm_medium=repo&utm_campaign=swift-ui-libraries">
<img src="https://github.com/Sammindinventory/MindInventory/blob/main/hirebutton.png" width="203" height="43"  alt="app development">
</a>
