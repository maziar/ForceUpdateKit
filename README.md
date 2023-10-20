# ForceUpdateKit

| ForceUpdateKit |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/imgpsh_fullsize_anim.jpeg' width='200'>

[![Languages](https://img.shields.io/badge/language-swift%205.0%20|%20objc-FF69B4.svg?style=plastic)](#) <br/>
[![Platform](https://img.shields.io/badge/platform-iOS%20|%20tvOS-blue.svg?style=plastic)](http://cocoadocs.org/docsets/FSPagerView)
[![Version](https://img.shields.io/cocoapods/v/FSPagerView.svg?style=plastic)](http://cocoadocs.org/docsets/FSPagerView) 
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-FF9966.svg?style=plastic)](https://swift.org/package-manager/)

<b>SWIFT</b>

**ForceUpdateKit** This repo is for checking the force update of app and handle the force update flow.

## Features
*  ***Force Update*** without implementing server and client
*  ***Variety*** of style and configuration.
*  ***Compatible*** with all platforms


## Installation
* Manually
* Cocoapods
* SPM (Swift Package Manager)

### Manually
1. ***[Download]([#](https://github.com/maziar/ForceUpdateKit/archive/refs/heads/main.zip))*** the source code.
2. Extract the zip file, simply drag folder ***Sources*** into your project.
3. Make sure ***Copy items if needed*** is checked.

### Cocoapods
```ruby
use_frameworks!
target '<Your Target Name>' do
    pod 'ForceUpdateKit'
end
```
https://cocoapods.org/pods/ForceUpdateKit


### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate ForceUpdateKit into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/maziar/ForceUpdateKit.git")
]
```


## Tutorial
* [Getting started](#getting_started)

### 1. Getting started <a id='getting_started'></a>

* Getting started with code

in Appdelegate or SceneDelegate or wherever you need it you can call:
```swift
import ForceUpdateKit

Task {
    await ForceUpdateKit().configure()
 }
```

## Demos
* [Demo1 - FullScreen1](#fullscreen1)
* [Demo2 - FullScreen2](#fullscreen2)
* [Demo3 - FullScreen3](#fullscreen3)
* [Demo4 - FullScreen4](#fullscreen4)
* [Demo5 - Popover1](#popover1)
* [Demo6 - Popover2](#popover2)

### Demo1 - FullScreen1 <a id="fullscreen1"></a>

| FullScreen1 |
|---|
|<img src='https://github.com/maziar/ReadmeFiles/blob/main/fullscreen1.png' width='200'>

**e.g.**

```swift
Task {
    await ForceUpdateKit().configure()
 }
```


## Demo2 - FullScreen2 <a id="fullscreen2"></a>

| FullScreen2 |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/fullscreen2.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .fullscreen2
    await ForceUpdateKit().configure(config: config)
 }
```
---

## Demo3 - FullScreen3 <a id="fullscreen3"></a>

| FullScreen3 |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/fullscreen3.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .fullscreen3
    await ForceUpdateKit().configure(config: config)
 }
```
---

## Demo4 - FullScreen4 <a id="fullscreen4"></a>

| FullScreen4 |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/fullscreen4.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .fullscreen4
    await ForceUpdateKit().configure(config: config)
 }
```
---

## Demo5 - Popover1 <a id="popover1"></a>

| Popover1 |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/popover1.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .popover1
    config.viewConfig.contentViewBackColor = .black
    config.viewConfig.popupViewBackColor = .black
    config.viewConfig.headerTitleColor = .white
    config.viewConfig.updateImageType = .gear
    config.viewConfig.updateImageColor = .orange
    config.viewConfig.updateButtonBackColor = .orange
    config.viewConfig.versionTextColor = .orange
    await ForceUpdateKit().configure(config: config)
 }
```
 <img src='https://github.com/maziar/ReadmeFiles/blob/main/popover1-backclear.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .popover1
    config.viewConfig.contentViewBackColor = .clear
    config.viewConfig.popupViewBackColor = .black
    config.viewConfig.headerTitleColor = .white
    config.viewConfig.updateImageType = .gear
    config.viewConfig.updateImageColor = .orange
    config.viewConfig.updateButtonBackColor = .orange
    config.viewConfig.versionTextColor = .orange
    await ForceUpdateKit().configure(config: config)
 }
```
---

## Demo6 - Popover2 <a id="popover2"></a>

| Popover2 |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/popover2.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .popover2
    config.viewConfig.contentViewBackColor = .black
    config.viewConfig.popupViewBackColor = .black
    config.viewConfig.headerTitleColor = .white
    config.viewConfig.updateImageType = .gear
    config.viewConfig.updateImageColor = .orange
    config.viewConfig.updateButtonBackColor = .orange
    config.viewConfig.versionTextColor = .orange
    await ForceUpdateKit().configure(config: config)
 }
```
 <img src='https://github.com/maziar/ReadmeFiles/blob/main/popover2-backclear.png' width='200'>

**e.g.**

```swift
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .popover2
    config.viewConfig.contentViewBackColor = .clear
    config.viewConfig.popupViewBackColor = .black
    config.viewConfig.headerTitleColor = .white
    config.viewConfig.updateImageType = .gear
    config.viewConfig.updateImageColor = .orange
    config.viewConfig.updateButtonBackColor = .orange
    config.viewConfig.versionTextColor = .orange
    await ForceUpdateKit().configure(config: config)
 }
```


## Service Configuration
this is the default value ***Service configuration*** class that you configure all items that you want custom:

```
public struct UpdateServiceConfig {
    public var route: String = "https://my.api.mockaroo.com/forceupdate.json?key=2202ab40"
    public var appId: String = Bundle.main.bundleIdentifier ?? String()
    public var version: String = Bundle.main.releaseVersionNumber ?? String()
    public var viewConfig: ForceUpdateViewConfig = ForceUpdateViewConfig()
}
```

that you can define or pass a new value for the route or use the default for using from our service.

**e.g.**
## Configuration Custom Server and Endpoint
```swift
Task {
    let config = UpdateServiceConfig()
    config.route = "https://myapi.enpoint/forceupdate"
    await ForceUpdateKit().configure(config: config)
 }
```

If you change the API endpoint for calling your server you should make the response that is expected from the Kit:

```
{
  "version": "Up to 12.349 version Apr 2024.",
  "forceUpdate": true,
  "title": "It's time to update",
  "description": "It's time to update The version you are using is old, need to update to the latest version in order to experience new features.",
  "iconUrl": "http://dummyimage.com/231x100.png/5fa2dd/ffffff.png",
  "linkUrl": "https://apps.apple.com/us/app/telegram/id747648890",
  "buttonTitle": "Update New Version"
}
```


## View and Style Configuration
this is the default value for ***View configuration*** class that you configure all items that you want custom:


```
public class ForceUpdateViewConfig {
    public var style: ForceUpdateViewStyle = .fullscreen1
    public var updateButtonNortmalTitle: String = "Update New Version"
    public var updateButtonSelectedTitle: String = "Update New Version"
    public var updateButtonImage: UIImage = UIImage(named: "") ?? UIImage()
    public var contentViewBackColor: UIColor = .white
    public var popupViewBackColor: UIColor = .black
    public var popupViewCornerRadius: CGFloat = 15.0
    public var contentBackGroundImage: UIImage = UIImage(named: "",
                                                         in: Bundle.module,
                                                         compatibleWith: nil) ?? UIImage()
    public var updateImageType: ImageType = .spaceship1
    public var updateImage: UIImage?
    public var updateImageColor: UIColor?
    public var updateButtonFont = UIFont.systemFont(ofSize: 12, weight: .medium)
    public var headerTitleFont = UIFont.systemFont(ofSize: 13, weight: .bold)
    public var headerTitle = "It's time to update"
    public var headerTitleColor: UIColor = .black
    public var descriptionFont = UIFont.systemFont(ofSize: 12, weight: .medium)
    public var descriptionText = "It's time to update The version you are using is old, need to update the latest version in order to experience new features."
    public var descriptionTextColor: UIColor = .gray
    public var versionFont = UIFont.systemFont(ofSize: 10, weight: .bold)
    public var versionText = "Up to 12.349 version Apr 2024."
    public var versionTextColor: UIColor = .gray
    public var updateButtonBackColor: UIColor = .blue
    public var lineColor: UIColor = .lightGray
    public var updateButtonTitleColor: UIColor = .white
    public var updateButtonCornerRadius: CGFloat = 20.0
    public var updateButtonBorderWidth: CGFloat = 0.0
    public var updateButtonBorderColor: UIColor = .clear
}
```
**e.g.**
```
Task {
    let config = UpdateServiceConfig()
    config.viewConfig.style = .popover2
    config.viewConfig.contentViewBackColor = .clear
    config.viewConfig.popupViewBackColor = .black
    config.viewConfig.headerTitle = "my header title"
    config.viewConfig.updateButtonCornerRadius = 30
    config.viewConfig.updateButtonBorderWidth = 1
    config.viewConfig.updateButtonBorderColor = .yellow
    config.viewConfig.headerTitleColor = .white
    config.viewConfig.updateImageType = .gear
    config.viewConfig.updateImageColor = .orange
    config.viewConfig.updateButtonBackColor = .orange
    config.viewConfig.versionTextColor = .orange
    await ForceUpdateKit().configure(config: config)
 }

```

