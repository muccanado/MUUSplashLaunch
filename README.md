# MUUSplashLaunch

A launch screen like Twitter App
![Alt text](https://github.com/muccanado/MUUSplashLaunch/blob/master/MUUSplashLaunch.png?raw=true "MUUSplashLaunch")

## Getting Started
From Sketch make a PDF from vector icon you prefer,export name it **"splashLogo.pdf"** and place inside your project **.xcassets** file under 2x resolution, then inside your root project viewcontroller import **MUUSplashLaunch** and place an UIImageView with **"splashLogo"** inside **"LaunchScreen.storyboard"** with x/y center and fixed size of 70x70px
add inside **viewDidLoad** follow two lines of code
```
 override func viewDidLoad() {
        super.viewDidLoad()

        //MUUSplashLaunch part start
        let splashView = MUUSplashLaunchView(frame: self.view.bounds)
        view.addSubview(splashView)
        //MUUSplashLaunch part end

    }
```

### Prerequisites
Swift 4.2

iOS 12.1

### Installing
with CocoaPods
inside **Podfile** use:

```platform :ios, '12.1'```

```pod 'MUUSplashLaunch', :git => 'https://github.com/muccanado/MUUSplashLaunch.git'```

## Authors
* **Alessandro Roncagalli** - [muccanado](https://github.com/muccanado)

## License
Copyright (c) 2019 muccanado

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
