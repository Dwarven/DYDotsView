# DYDotsView
A simple view that show pulsing dots for Objective-C and Swift.

## Preview
![Demo Gif](https://raw.githubusercontent.com/Dwarven/DYDotsView/master/demo.gif)
## Podfile
To integrate DYDotsView into your Xcode project using CocoaPods, specify it in your `Podfile`:

Objective-C

```ruby
pod 'DYDotsView'
```
Swift

```ruby
pod 'DYDotsView-Swift'
```
## How to use 

Objective-C

```obj-c
    #import "DYDotsView.h"
    DYDotsView * dots = [[DYDotsView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [dots setNumberOfDots:@5];
    [dots setDuration:@0.4];
    [dots setBackgroundColor:[UIColor clearColor]];
    [dots setDotsColor:[UIColor redColor]];
    [dots startAnimating];
    [dots setCenter:self.view.center];
    [self.view addSubview:dots];
    
    //[dots stopAnimating];
```
Swift

``` swift 
     var dots = DYDotsView(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
     dots.numberOfDots = 5
     dots.duration = 0.4
     dots.backgroundColor = .clear
     dots.dotsColor = .red
     dots.startAnimating()
     dots.center = self.view.center
     self.view.addSubview(dots)
     
     //dots.stopAnimating()
```


