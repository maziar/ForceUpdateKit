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
    let config = UpdateServiceConfig()
    config.viewConfig.style = .fullscreen1
    await ForceUpdateKit().configure(config: config)
 }
```


## Demo2 - FullScreen2 <a id="fullscreen2"></a>

| FullScreen2 |
|---|
| <img src='https://github.com/maziar/ReadmeFiles/blob/main/fullscreen2.png' width='200'>

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
