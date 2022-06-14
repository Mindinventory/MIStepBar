# iOS-Top-Tab-Navigation

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

Good news for all our users out there! Now there are no boundaries to your convenience, you can pass as much words as you want and bind the same number of  pages using page control, their is no limit of words and neither for your easiness.

Checkout this super easy navigation integration and example.!!! 

<p align="center">
  <img src="https://user-images.githubusercontent.com/84714866/168037057-fb6d82f4-0bdd-44cc-adf2-5f622853f658.gif">
</p>

## Installation
To install it, simply add the following line to your Podfile:

```ruby
pod 'TopTabBarView', git: 'https://github.com/parthgohel2810/TopTabBarView-Framework.git', branch: 'main'
```
Then run `pod install` from the Example directory.

## Usage

1. Change the class of a view from UIView to TopTabbarView
```swift
@IBOutlet private weak var topTabBarView: TopTabbarView!
```
2. Programmatically:

```swift
let topTabBarView = TopTabbarView(frame: myFrame)

```

## Customization 

```swift
    private func configureTabBarItem() {
        
        topTabBarView.dataSource = ["M", "I", "N", "D", "I", "N", "V", "E", "N", "T", "O", "R", "Y"]
        topTabBarView.dotColor = .white
        topTabBarView.waveHeight = 16
        topTabBarView.leftPadding = 10
        topTabBarView.rightPadding = 10
        topTabBarView.tabBarColor = .red
        topTabBarView.onItemSelected = { (index) in
                debugPrint("tabIndex: \(index)")
        }
        topTabBarView.isScaleItem = true
        topTabBarView.tabBarItemStyle = .setStyle(font: UIFont.boldSystemFont(ofSize: 18),
                                                  foregroundColor: .white)
    }
```

#### dataSource
The dataSource property accepts string array which is used to display title of tab and creates number of tab that you want to create.

#### dotColor
The dotColor property change the color of dot which is place at center of wave.

#### waveHeight
The waveHeight property change height of wave.

#### leftPadding, rightPadding
The left and right padding property will change the tabBar left and right padding to the view.

#### tabBarColor
The tabBarColor property used to change background color of tabbar color.

#### isScaleItem
The isScaleItem property enables you to off/on scaling of tab titles.

#### tabBarItemStyle
The tabBarItemStyle used to tabBarItem font and textColor.

#### selectedTab
The selectedTab used to set selected tab initially.

#### setSelectedTab(with index: Int)
This function used to set selected tab programmatically.

#### onItemSelected
You will receive selected tab index in onItemSelected clouser.
```swift
  topTabBarView.onItemSelected = { (index) in
                debugPrint("tabIndex: \(index)")
  }
```

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
