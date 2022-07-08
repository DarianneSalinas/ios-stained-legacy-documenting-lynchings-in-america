//
//  AlertController.swift
//  MapExample8
//
//  Created by Darianne Salinas on 6/22/22.
//

import Foundation
import UIKit

//functions helping us with creating an alert

class AlertController {
    
    static func presentAlertControllerWith(alertTitle: String, alertMessage: String?, dismissActionTitle: String) -> UIAlertController {
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: dismissActionTitle, style: .cancel, handler: nil)
        alertController.addAction(dismissAction)
        
        return alertController
    }
    
    
    static func presentActionSheetAlertControllerWith(alertTitle: String?, alertMessage: String?, dismissActionTitle: String) -> UIAlertController {
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .actionSheet)
        let dismissAction = UIAlertAction(title: dismissActionTitle, style: .cancel, handler: nil)
        alertController.addAction(dismissAction)
        
        return alertController
    }
}
