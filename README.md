# FavouriteAthlete
Lab—Favourite athletes , uses MVC design, uses  UITableViewController

you need to create the unwind segue in storyboard. In the storyboard, drag from the athlete form scene in the document outline to the view controller's Exit, then choose the Unwind segue. Give this segue a name by selecting it in the document outline and adding the identifier in the Attributes inspector.
Now you need to instruct the segue when to execute in the AthleteFormViewController. Do this by calling performSegue(WithIdentifier:sender:) in your saveButtonTapped method, then passing in the identifier of the unwind segue and self as the sender.



![Storyboard](https://github.com/oobii/FavouriteAthlete/blob/master/FavouriteAthlete.png)
