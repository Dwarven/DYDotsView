# DYDotsView
A simple view that show pulsing dots for Objective-C and Swift.

How to use 
---
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
    
    [dots stopAnimating];
```

``` swift 
     var dots = DYDotsView(frame: CGRectMake(0, 0, 300, 300))
     dots.numberOfDots = 5
     dots.duration = 0.4
     dots.backgroundColor = .clearColor()
     dots.dotsColor = .redColor()
     dots.startAnimating()
     dots.center = self.view.center
     self.view.addSubview(dots)
     
     dots.stopAnimating()
```
