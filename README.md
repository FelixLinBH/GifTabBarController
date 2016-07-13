# GifTabBarController

[![Version](https://img.shields.io/cocoapods/v/GifTabBarController.svg?style=flat)](http://cocoapods.org/pods/GifTabBarController)
[![License](https://img.shields.io/cocoapods/l/GifTabBarController.svg?style=flat)](http://cocoapods.org/pods/GifTabBarController)
[![Platform](https://img.shields.io/cocoapods/p/GifTabBarController.svg?style=flat)](http://cocoapods.org/pods/GifTabBarController)

This library provides tabBarController has animation tabBarItem with GIF image.

##Preview Screen Shot

![GifTabBarController Screenshot](https://raw.githubusercontent.com/FelixLinBH/GifTabBarController/master/1.gif)


## How To Use
###Use Cocoapods
```
pod "GifTabBarController"
```
###Import header file
```
#import "GifTabBarHeader.h"
```
###Use GifTabBarItem to create UITabBarItem item
####Two way init item.
**Initialize with tabBar title,gif url string and viewController**

```
- (instancetype)initWithTitle:(NSString *)title gifUrlString:(NSString *)gifUrlString viewController:(UIViewController *)viewController
``` 
#####Example
```
GifTabBarItem *tabBarItem = [[GifTabBarItem alloc]initWithTitle:@"TabBarItemTitle" gifUrlString:@"www.xxx.1.gif" viewController:viewcontroller];
```
or

**With normalImage and selectedImage**

NormalImage will show in normal status(it mean not been selected)

**GIF animation is transitions from normalImage to selectedImage**.

```
- (instancetype)initWithTitle:(NSString *)title gifUrlString:(NSString *)gifUrlString viewController:(UIViewController *)viewController normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage
```
#####Example
```
GifTabBarItem *tabBarItem = [[GifTabBarItem alloc]initWithTitle:@"TabBarItemTitle" gifUrlString:@"www.xxx.1.gif" viewController:viewcontroller normalImage:[UIImage imageNamed:@"normalImage"] selectedImage:[UIImage imageNamed:@"selectedImage"]]];
```

###Use GifTabBarController to create UITabBarController with GifTabBarItem Set.

```
- (instancetype)initWithTabItems:(NSArray *)array;
```

#####Example

```
GifTabBarController *tab = [[GifTabBarController alloc]initWithTabItems:@[oneTabBarItem,twoTabBarItem,threeTabBarItem,fourTabBarItem,fiveTabBarItem]];

```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## To Do

* Support animation type to control animation while it been selected. (infinite animation or not)
* Support tabBarItem label change color while it been selected.
* Support tabBarItem backgound shadow while it been selected.
 
## Dependency

* [**Masonry**](https://github.com/SnapKit/Masonry)
* [**FLAnimatedImage**](https://github.com/Flipboard/FLAnimatedImage)

## Author

Created by [Felix.Lin](mailto:fly_81211@hotmail.com)

## License

GifTabBarController is available under the MIT license. See the LICENSE file for more info.