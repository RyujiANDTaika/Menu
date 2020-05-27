//
//  DetailPageUIView.swift
//  ELeMel
//
//  Created by Aki on 2020/5/23.
//  Copyright © 2020 Aki. All rights reserved.
//

import UIKit

class DetailPageUIView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var contentView: DetailPageContentUIView?
    
    let DetailPageUIViewHeight = 800
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initView()
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initView(){
        
        let contentViewFrame = CGRect(x: 0, y: 44, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 88 - 44)
        contentView = DetailPageContentUIView(frame: contentViewFrame)
        
        self.addSubview(contentView!)
    }
}
