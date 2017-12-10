@IBOutlet weak var actingTask: UILabel!

@IBAction func generateActingTask() {
    
    //generate random emotion
    let emotionRandomIndex = Int(arc4random_uniform(UInt32(emotions.count)))
    let randomEmotions = emotions[emotionRandomIndex]
    
    //generate random activities
    let randomActivityIndex = Int(arc4random_uniform(UInt32(activities.count)))
    let randomActivity = activities[randomActivityIndex]
    
    //Modify the label
    let newActingTask = "You are " + randomEmotions + " " + randomActivity + "!"
    actingTask.text = newActingTask
