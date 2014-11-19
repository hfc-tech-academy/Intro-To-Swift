import UIKit
import XCPlayground
import QuartzCore

let zoom:CGFloat = 0.5
let deviceSize = CGSize(width: 640*zoom, height: 1136*zoom)

let helloWorldView = UIView(frame: CGRect(x: 0, y: 0, width: deviceSize.width, height: deviceSize.height))
helloWorldView.backgroundColor = UIColor(white: 0, alpha: 0.01)


let font = UIFont(name: "HelveticaNeue-Light", size: 62)


let label = UILabel(frame: CGRect.zeroRect)
label.frame.origin.y = 100
label.text = "Hello\nWorld!"
label.numberOfLines = 3
label.font = font
label.sizeToFit()
helloWorldView.addSubview(label)


let button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
button.frame = CGRectMake(deviceSize.width/2 - 50, deviceSize.height-130, 100, 50)
button.setTitle("Test Button", forState: UIControlState.Normal)
//button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)

helloWorldView.addSubview(button)

XCPShowView("iphone", helloWorldView)
