# FavouriteAthlete
Lab—Favourite athletes , uses MVC design, uses  UITableViewController

We need to create the unwind segue in storyboard. In the storyboard, drag from the <b>athlete form scene</b> in the document outline to the <b>Form view controller's Exit</b>, then choose the Unwind segue. Give this segue a name by selecting it in the document outline and adding the identifier in the Attributes inspector.
Now you need to instruct the segue when to execute in the AthleteFormViewController. Do this by calling performSegue(WithIdentifier:sender:) in your saveButtonTapped method, then passing in the identifier of the unwind segue and self as the sender.<br>
In the 
```swift
class AthleteTableViewController: UITableViewController {
...
...
    @IBAction func unwindToAthleteTVC(for unwindSegue: UIStoryboardSegue) {
        
        if let athleteFormVC = unwindSegue.source as? AthleteFormViewController {
            
            guard let athlete = athleteFormVC.athlete
                else { return }
            
            print("\(athlete)")
            
            if let indexPath = tableView.indexPathForSelectedRow {
                athletes.remove(at: indexPath.row)
                athletes.insert(athlete, at: indexPath.row)
                tableView.deselectRow(at: indexPath, animated: true)
            } else {
                athletes.append(athlete)
            }
            
        }
        
    }

```


![Storyboard](https://github.com/oobii/FavouriteAthlete/blob/master/FavouriteAthlete.png)
