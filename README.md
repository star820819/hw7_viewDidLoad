# hw7_viewDidLoad

一個以 UIKit 製作的 iOS 動畫練習專案，示範如何在 `viewDidLoad()` 中建立畫面、播放逐格動畫，以及使用 `CAEmitterLayer` 製作星星粒子效果。

## 功能特色

- 以 Storyboard 建立與切換畫面
- 使用 `UIImage.animatedImageNamed` 播放 Woodstock 與 Snoopy 的逐格動畫
- 使用 `CAEmitterCell` 與 `CAEmitterLayer` 製作由上往下飄落的星星
- 調整粒子的大小、速度與加速度，營造夜空動態效果
- 使用 SF Symbols 的圓形圖案作為 mask，將圖片裁切成圓形
- 使用 Asset Catalog 管理背景、星星與動畫圖片資源

## 畫面介紹

### Night Sky

以夜空圖片作為背景，透過粒子發射器產生大小不同、向左下方移動的星星，並在畫面中播放 Woodstock 動畫。

### Dancing

顯示 Snoopy 與 Woodstock 的逐格動畫，並套用圓形遮罩呈現特殊的圖片外觀。

## 使用技術

- Swift
- UIKit
- Storyboard
- Core Animation (`CAEmitterLayer`, `CAEmitterCell`)
- Asset Catalog
- SF Symbols

## 專案結構

```text
hw7_viewDidLoad/
├── AppDelegate.swift
├── SceneDelegate.swift
├── NightSkyViewController.swift
├── DancingViewController.swift
├── Main.storyboard
├── LaunchScreen.storyboard
├── Assets.xcassets
└── Info.plist
```

## 執行方式

1. 使用 Xcode 開啟 `hw7_viewDidLoad.xcodeproj`。
2. 選擇任一 iPhone 模擬器或已連接的 iPhone。
3. 按下 `Command + R` 建置並執行專案。

## 學習重點

這個專案主要練習 UIViewController 的生命週期，以及在 `viewDidLoad()` 中完成下列工作：

- 設定 IBOutlet 圖片內容
- 以程式建立並加入 `UIImageView`
- 設定逐格動畫圖片
- 建立 Core Animation 粒子效果
- 使用 `mask` 改變 View 的顯示形狀

## 備註

本專案為 iOS App 開發課程作業，主要用途為 UIKit 與動畫效果練習。
