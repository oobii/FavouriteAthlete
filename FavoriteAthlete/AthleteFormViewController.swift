//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by martynov on 2018-01-08.
//
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete: Athlete?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var leagueTextField: UITextField!
    
    @IBOutlet weak var teamTextField: UITextField!
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        guard let name = nameTextField.text,
        let age = ageTextField.text,
        let league = leagueTextField.text,
        let team = teamTextField.text
            else { return }
        
        athlete = Athlete(name: name, age: age, league:  league, team: team )
        performSegue(withIdentifier: "unwindToAthleteTVCForm", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView() {
        
        if let curAthlete = athlete {
            
            nameTextField.text = curAthlete.name
            ageTextField.text = curAthlete.age
            leagueTextField.text = curAthlete.league
            teamTextField.text = curAthlete.team
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
