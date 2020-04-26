
//
//  Utils.swift
//  Apps For Your Business
//
//  Created by Pankti on 13/02/17.
//  Copyright © 2017 Dungeon_Master. All rights reserved.
//

import UIKit
class Utils: NSObject
{
    class func set_Image_on_LeftView_of_Textfield(textfield : UITextField ,imagename : String, width : CGFloat, height : CGFloat)
       {
           textfield.leftViewMode = UITextField.ViewMode.always
           let imageView = UIImageView(frame: CGRect(x: 0, y: 8, width: width, height: height))
           let image = UIImage(named: imagename)?.withRenderingMode(.alwaysTemplate)
//           imageView.tintColor = App_Colors.DarkGray
           imageView.image = image
           imageView.contentMode = .scaleToFill
           textfield.leftViewMode = .always
           textfield.addSubview(imageView)
       }
       class func set_Image_on_RightView_of_Textfield(textfield : UITextField ,imagename : String, x : CGFloat , y : CGFloat , width : CGFloat, height : CGFloat)
       {
        textfield.leftViewMode = UITextField.ViewMode.always
           let imageView = UIImageView(frame: CGRect(x: x, y: y, width: width, height: height))
           let image = UIImage(named: imagename)
           imageView.image = image
           imageView.contentMode = .center
           textfield.rightViewMode = .always
           textfield.addSubview(imageView)
       }
}

