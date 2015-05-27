//
//  ViewController.swift
//  VungleSwift
//
//  Created by Jordyn Chuhaloff on 11/21/14.
//  Copyright (c) 2014 Jordyn Chuhaloff. All rights reserved.
//

import UIKit
//import VungleSDK

class ViewController: UIViewController, VungleSDKDelegate {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	
	
	// Play an ad using default settings
	@IBAction func playAd(sender: AnyObject) {
		var sdk = VungleSDK.sharedSDK()
		sdk.delegate = self
		sdk.playAd(self, error: nil)
	}
	
	// Play an ad with custom options
	@IBAction func playCustomAd(sender: AnyObject) {
		var sdk = VungleSDK.sharedSDK()
		sdk.playAd(self, withOptions: [VunglePlayAdOptionKeyIncentivized: true,
			VunglePlayAdOptionKeyOrientations: UIInterfaceOrientationMask.Portrait.rawValue,
			VunglePlayAdOptionKeyUser: "username123",
			VunglePlayAdOptionKeyPlacement: "Level3",
			VunglePlayAdOptionKeyExtraInfoDictionary: [VunglePlayAdOptionKeyExtra1: "female", VunglePlayAdOptionKeyExtra2: "21"]], error:nil)
	}
	
	func vungleSDKwillCloseAdWithViewInfo(viewInfo: [NSObject : AnyObject]!, willPresentProductSheet: Bool) {
		println(viewInfo)
	}
}

