//
//  ViewController.swift
//  
//
//  Created by Trevor Beaton on 8/22/17.
//
//

import Foundation
import UIKit
import CoreBluetooth
import PlaygroundSupport
import PlaygroundBluetooth


public class ViewController: UIViewController, UITextViewDelegate {
    //Data
    //Page ID
    var page:Int = 1
    //Data

    var btViewConstraints = [NSLayoutConstraint]()
    var isLandscape:Bool = true

    
    //Button Setup
    public var commentText:UITextView!

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    public convenience init(_ page:Int = 1) {
        self.init(nibName: nil, bundle: nil)
        self.page = page
    }
    
    public override func  viewDidLoad() {
        super.viewDidLoad()
        UISetup()
        self.commentText.delegate = self
    }

    
    public override func viewDidAppear(_ animated: Bool) { // Notifies the view controller that its view was added to a view hierarchy.
        super.viewDidAppear(animated)
    }
    
    public override func viewDidLayoutSubviews() { // Called to notify the view controller that its view has just laid out its subviews.
        super.viewDidLayoutSubviews()
        
    }
  

    func UISetup() {
        // Setup debug log
        commentText = UITextView(frame: CGRect(x: 0, y: 350, width: 520, height: 320))
        commentText.text = "Debug log..."
        commentText.isEditable = false
        commentText.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        commentText.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        commentText.font = UIFont.init(name: "Menlo", size: 15)
        commentText.textAlignment = .left
        commentText.textContainer.lineBreakMode = .byWordWrapping
        commentText.layer.borderWidth = 0
        commentText.layer.cornerRadius = 18
        view.addSubview(commentText)
    }
  

}

 
