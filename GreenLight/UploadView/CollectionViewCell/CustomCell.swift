//
//  CustomCell.swift
//  GreenLight
//
//  Created by brian은석 on 26/06/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        makeView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func makeView() {
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: self.frame.height).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        imageView.isUserInteractionEnabled = true
        
    
        
    }
}
