//
//  LandingPageViewController.swift
//  MapExample
//
//  Created by Darianne Salinas on 7/7/22.
//

import UIKit

class LandingPageViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lynchingTermLabel: UILabel!
    @IBOutlet weak var lynchingTermDefinitionLabel: UITextView!
    @IBOutlet weak var lynchingDefinitionSource: UILabel!
    @IBOutlet weak var lynchingQuestionLabel: UILabel!
    @IBOutlet weak var lynchingQuestionAnswerLabel: UITextView!
    @IBOutlet weak var lynchingQuestionInfoSource: UILabel!
    
    @IBOutlet weak var continueButtonPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "landingViewBackground.jpg")!)
        //self.view.backgroundColor = .black
        updateLandingView()
        
    }
    
   
    func updateLandingView() {
        
        //titleLabel styling
       self.titleLabel.numberOfLines = 0
        self.titleLabel.text = "Stained Legacy: \nDocumenting Lynching in America"
        titleLabel.backgroundColor = UIColor.init(red: 204/255, green: 153/255, blue: 51/255, alpha: 1)
        titleLabel.layer.cornerRadius = 25.0
        titleLabel.layer.masksToBounds = true
        
        
        self.lynchingTermLabel.text = "Lynching:"
        
        
        self.lynchingTermDefinitionLabel.text = "\tA form of violence in which a mob, under the pretext of administering justice without trial, executes a presumed offender, often after inflicting torture and corporal mutilation. The term lynch law refers to a self-constituted court that imposes sentence on a person without due process of law"
        lynchingTermDefinitionLabel.backgroundColor = UIColor.init(red: 242/255, green: 245/255, blue: 234/255, alpha: 1)
        lynchingTermDefinitionLabel.layer.cornerRadius = 25.0
        
        
        
        self.lynchingDefinitionSource.text = "Source: brittanica.com"
        self.lynchingQuestionLabel.text = "How Many People Were Lynched?"
        
        //styling text body
        self.lynchingQuestionAnswerLabel.text = "'From 1882 to 1968, 4,743 lynchings occurred in the U.S., according to records maintained by NAACP. Other accounts, including the Equal Justice Initiative's extensive report on lynching, count slightly different numbers, but it's impossible to know for certain how many lynchings occurred because there was no formal tracking. Many historians believe the true number is underreported.'"
        lynchingQuestionAnswerLabel.backgroundColor = UIColor.init(red: 242/255, green: 245/255, blue: 234/255, alpha: 1)
        lynchingQuestionAnswerLabel.layer.cornerRadius = 25.0
        
        self.lynchingQuestionInfoSource.text = "Source: naacp.org"
    
        //uibutton styling
        continueButtonPressed.backgroundColor = UIColor.init(_colorLiteralRed: 200/255, green: 137/255, blue: 77/255, alpha: 1)
        continueButtonPressed.layer.cornerRadius = 25.0
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
