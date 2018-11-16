//
//  JWellTHomeViewController.swift
//  TruckBang
//
//  Created by ya ran on 2018/11/15.
//  Copyright © 2018 ya ran. All rights reserved.
//

import UIKit

class JWellTHomeViewController: RootViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        addView()
        setViewLocation()
        networking()
    }
    
    func networking() {
        JWellTHomePageBannerNetworking.homePageBanner()
    }
    
    func addView() {
        self.view.addSubview(self.cycleView)
    }
    
    func setViewLocation() {
        self.cycleView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(0)
            make.height.equalTo(KSP(V: 200))
        }
    }
    
    
    lazy var cycleView: (ZCycleView) = {
        let cycleView = ZCycleView()
        cycleView.timeInterval = 2
        cycleView.placeholderImage = UIImage.init(named: "")
        cycleView.pageControlItemSize = CGSize(width: 16, height: 4)
        cycleView.pageControlCurrentItemSize = CGSize(width: 10, height: 10)
        cycleView.pageControlIndictirColor = UIColor.red
        cycleView.pageControlCurrentIndictirColor = UIColor.blue
        cycleView.pageControlHeight = (cycleView.frame.size.height-90*1.3)/2
        cycleView.itemSize = CGSize(width: 240, height: 90)
        cycleView.itemZoomScale = 1.2
        cycleView.backgroundColor = UIColor.red
        cycleView.didSelectedItem = {
            print("cycleView2 didSelectedItem:  \($0)")
        }
       return cycleView
    }()

}


extension JWellTHomeViewController: ZCycleViewProtocol{
    
    func cycleViewDidScrollToIndex(_ index: Int) {
        print(index)
    }
    func cycleViewDidSelectedIndex(_ index: Int) {
        print("selected: \(index)")
    }
    
}
