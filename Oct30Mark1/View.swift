//
//  View.swift
//  Oct30Mark1
//
//  Created by edwin vazquez on 1/5/15.
//  Copyright (c) 2015 A Perfect Empire. All rights reserved.
//

import UIKit

class View: UIView {
var y: CGFloat = 0;

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		backgroundColor = UIColor.redColor();
	}
	
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
	
	override func drawRect(rect: CGRect) {
		let s: String = "💀 WARNING WEREWOLF 💀 ";
		let font: UIFont = UIFont.systemFontOfSize(32);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font];
		let application: UIApplication = UIApplication.sharedApplication();
		let appDelegate: AppDelegate = application.delegate! as AppDelegate;
		let window: UIWindow = appDelegate.window!;
		let viewController: ViewController = window.rootViewController! as ViewController;
		let size: CGSize = s.sizeWithAttributes(attributes);
		let x:CGFloat = bounds.origin.x + (bounds.size.width - size.width)/2;
		y+=1;
		
		//Call drawRect(_:) 30 times per second.
		let t: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC) / 30);
		dispatch_after(t, dispatch_get_main_queue(), {self.setNeedsDisplay();});
		let point: CGPoint = CGPointMake(x, y);
		
		s.drawAtPoint(point, withAttributes: attributes);

}

}