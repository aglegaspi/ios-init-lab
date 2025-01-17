import UIKit

//Exercise - Structs, Instances, and Default Values


// PG.1

// Imagine you are creating some kind of app for monitoring location. Create a GPS struct with two variable properties, latitude and longitude, both with default values of 0.0.

struct GPS {
    var latitude = 0.0
    var longitude = 0.0
}


// Create a variable instance of GPS called somePlace. It should be initialized without supplying any arguments. Print out the latitude and longitude of somePlace, which should be 0.0 for both.

var somePlace = GPS()
print(somePlace.latitude)
print(somePlace.longitude)


// Change somePlace's latitude to 51.514004, and the longitude to 0.125226, then print the updated values.

somePlace.latitude = 51.514004
somePlace.longitude = 0.125226
print(somePlace.latitude)
print(somePlace.longitude)

// Now imagine you are making a social app for sharing your favorite books. Create a Book struct with four variable properties: title, author, pages, and price. The default values for both title and author should be an empty string. pages should default to 0, and price should default to 0.0.

struct Book {
    var title = ""
    var author = ""
    var pages = 0
    var price = 0.0
}


// Create a variable instance of Book called favoriteBook without supplying any arguments. Print out the title of favoriteBook. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of favoriteBook to reflect your favorite book. Then using the properties of favoriteBook, print out facts about the book.

var favoriteBook = Book(title: "Children of Blood and Bone", author: "Tomi Adeyemi", pages: 537, price: 9.99)

print(favoriteBook.title)
print(favoriteBook.author)
print(favoriteBook.pages)
print(favoriteBook.price)



// PG.2

//App Exercise - Workout Tracking

//These exercises reinforce Swift concepts in the context of a fitness tracking app.

//Your fitness tracking app wouldn't be much of a fitness tracker if it couldn't help users track their workouts. In order to track a user's run, you'll need to have some kind of data structure that can hold information about the workout. For the sake of simplicity, you'll focus specifically on running workouts.

//Create a RunningWorkout struct. It should have variables properties for distance, time, and elevation. All three properties should have default values of 0.0.

struct RunningWorkout {
    var distance = 0.0
    var time = 0.0
    var elevation = 0.0
    
    func runSummary() {
        print("Summar of run: \(distance) meters, \(time) minutes, and  \(elevation) meters of elevation change")
    }
}


//Create a variable instance of RunningWorkout called firstRun without supplying any arguments. Print out all three properties of firstRun. This is a good example of when using default values is appropriate, seeing as all running workouts start with a distance, time, and elevation change of 0.

var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.elevation)


//Now imagine that throughout the course of the run, you go a distance of 2396 meters in 15.3 minutes, and gain 94 meters of elevation. Update the values of firstRun's properties accordingly. Print a statement about your run using the values of each property.

firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94
firstRun.runSummary()


// PG.3

//Exercise - Memberwise and Custom Initializers

//If you completed the exercise Structs, Instances, and Default Values, you created a GPS struct with default values for properties of latitude and longitude. Create your GPS struct again, but this time do not provide default values. Both properties should be of type Double.

struct GPS3 {
    var longitude: Double
    var latitude: Double
}


//Now create a constant instance of GPS called somePlace, and use the memberwise initializer to set latitude to 51.514004, and longitude to 0.125226. Print the values of somePlace's properties.

let somePlace3 = GPS3(longitude: 0.125226, latitude: 51.514004)
print(somePlace3.longitude)
print(somePlace3.latitude)


//In Structs, Instance, and Default Values, you also created a Book struct. Creat this struct again without default values. Give each property appropriate types. Declare your favoriteBook instance and pass in the values of your favorite book using the memberwise initializer. Print a statement about your favorite book using favoriteBook's properties.

struct Book3 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func myFavoriteBook() {
        print("One of my favorite's book is '\(title)' by \(author). It has \(pages) pages and costs $\(price).")
    }
}

var favoriteBook3 = Book3(title: "Lessons In Becoming Myself", author: "Ellen Burstyn", pages: 480, price: 10.99)

favoriteBook3.myFavoriteBook()

//Make a Height struct with two variable properties, heightInInches and heightInCentimeters. Both should be of type Double.

//Create two custom initializers. One initializer will take a Double argument that represents height in inches. The other initializer will take a Double argument that represents height in centimeters. Each initializer should take the passed in value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other property by calculating the right value from the passed in value. Hint: 1 inch = 2.54 centimeters.

//If you use the initializer for inches to pass in a height of 65, the initializer should set heightInInches to 65 and heightInCentimeters to 165.1.

struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInInches = heightInCentimeters / 2.54
        self.heightInCentimeters = heightInCentimeters
    }
}

//Now create a variable instance of Height called someonesHeight. Use the initializer for inches to set the height to 65. Print out the property for height in centimeters and verify that it is equal to 165.1.

var someonesHeight = Height(heightInInches: 70)
print(someonesHeight.heightInInches)
print(someonesHeight.heightInCentimeters)

//Now create a variable instance of Height called myHeight and initialize it with your own height. Verify that both heightInInches and heightInCentimeters are accurate.

var myHeight = Height(heightInCentimeters: 190.5)
print(myHeight.heightInInches)
print(myHeight.heightInCentimeters)



// PG.4

//App Exercise - Users and Distance

//These exercises reinforce Swift concepts in the context of a fitness tracking app.

//For most apps you'll need to have a data structure to hold information about a user. Create a User struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having name be a String, age be an Int, height and weight be of type Double, and activityLevel be an Int that will represent a scoring 1-10 of how active they are. Implement this now.

struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Int
    var activityLevel: Int
}


//Create a variable instance of User and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your User instance using the instance's properties.


var aleXander = User(name: "Alexander", age: 36, height: 5.11, weight: 200, activityLevel: 8)
print(aleXander.weight)


//In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a Distance struct that will represent distance in various units of measurement. At a minimum, it should have a meters property and a feet property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: 1 meter = 3.28084 feet.

struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }
    
    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

//If you use the initializer for meters and pass in a distance of 1600, the initializer should set meters to 1600 and feet to 5249.344.

var firstDistance = Distance(meters: 1600)
print(firstDistance.feet)


// Now create an instance of Distance called mile. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.

var mile = Distance(meters: 1600)
print(mile.feet)

// Now create another instance of Distance and give it some other distance. Ensure that both properties are set correctly.

var secondDistance = Distance(meters: 192.934)
print(secondDistance.feet)




// PG.5

//Exercise - Methods

//A Book struct has been created for you below. Add an instance method on Book called description that will print out facts about the book. Then create an instance of Book and call this method on that instance.

struct Book5 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("\(title) by \(author) is \(pages) long and is $\(price)")
    }
}

var bookInfo = Book5(title: "Swifty", author: "Rick Sanchez", pages: 1, price: 9.99)
bookInfo.description()

//A Post struct has been created for you below, representing a generic social media post. Add a mutating method on Post called like that will increment likes by one. Then create an instance of Post and call like() on it. Print out the likes property before and after calling the method to see whether or not the value was incremented.

struct Post5 {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var myPost5 = Post5(message: "yo!", likes: 3, numberOfComments: 3)
myPost5.likes
myPost5.like()
myPost5.likes


// PG. 6

//App Exercise - Workout Functions

//These exercises reinforce Swift concepts in the context of a fitness tracking app.

//A RunningWorkout struct has been created for you below. Add a method on RunningWorkout called postWorkoutStats that prints out the details of the run. Then create an instance of RunningWorkout and call postWorkoutStats().

struct RunningWorkout6 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("The distance you traveled was \(distance) meters. It took you \(time) minutes. With an elevation of \(elevation) meters")
    }
}

var yourRunningResults = RunningWorkout6(distance: 20.33, time: 10.5, elevation: 10.8)
yourRunningResults.postWorkoutStats()

//A Steps struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on Steps called takeStep that increments the value of steps by one. Then create an instance of Steps and call takeStep(). Print the value of the instance's steps property before and after the method call.


struct Steps {
    
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        self.steps += 1
    }

}

var tookAStep = Steps(steps: 5, goal: 10)
tookAStep.steps
tookAStep.takeStep()
tookAStep.steps




// PG. 7


//Exercise - Computed Properties and Property Observers

//The Rectangle struct below has two properties, one for width and one for height. Add a computed property that computes the area of the rectangle (i.e. width * height). Create an instance of Rectangle and print the area property.

struct Rectangle7 {
    var width: Int
    var height: Int
    var area: Int {
        get {
            return width * height
        }
    }
}

var goodRectangle = Rectangle7(width: 10, height: 5)
goodRectangle.area

//In the Height struct below, height is represented in both inches and centimeters. However, if heightInInches is changed, heightInCentimeters should also adjust to match it. Add a didSet to each property that will check if the other property is what it should be, and if not, sets the proper value. If you set the value of the other property even though it already has the right value, you will end up with an infinite loop of each property setting the other.

//Create an instance of Height and then change one of its properties. Print out the other property to ensure that it was adjusted accordingly.


struct Height7 {
    var heightInInches: Double {
        didSet {
            let cm = heightInInches*2.54
            print("oiweorwerewor")
            if heightInCentimeters != cm {
                heightInCentimeters = cm
            }
        }
    }
    
    var heightInCentimeters: Double {
        didSet {
            let inches = heightInCentimeters/2.54
            print("helllelrelrllrelr")
            if heightInInches != inches {
                heightInInches = inches
            }
        }
    }

    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}
print("")
var newHeight = Height7(heightInCentimeters: 175)
print(newHeight.heightInInches)
print(newHeight.heightInCentimeters)

// PG.8


//App Exercise - Mile Times and Congratulations

//These exercises reinforce Swift concepts in the context of a fitness tracking app.

//The RunningWorkout struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called averageMileTime that uses distance and time to compute the user's average mile time. Assume that distance is in meters and 1600 meters is a mile.

//Create an instance of RunningWorkout and print the averageMileTime property. Check that it works properly.


struct RunningWorkout8 {
    var distance: Double
    var time: Double
    var elevation: Double
    var average: Double {
        get {
            return distance/time
        }
    }
}

let myAverage = RunningWorkout8(distance: 3200, time: 20, elevation: 500)
myAverage.average

//In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.

//In the Steps struct below, add a willSet to the steps property that will check if the new value is equal to goal, and if it is, prints a congratulatory message. Create an instance of Steps where steps is 9999 and goal is 10000, then call takeStep() and see if your message is printed to the console.

struct Steps8 {
    var steps: Int {
        willSet(myNewValue) {
            if myNewValue == goal {
                print("Congrats you achieved your goal of \(goal) steps!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var mySteps = Steps8(steps: 9999, goal: 10000)
mySteps.steps
mySteps.takeStep()
mySteps.steps


// PG.9


//Exercise - Type Properties and Methods

//Imagine you have an app that requires the user to log in. You may have a User struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a currentUser type property on the User struct below and assign it to a user object representing you. Now you can access the current user through the User struct. Print out the properties of currentUser.

struct User9 {
    var userName: String
    var email: String
    var age: Int
    var currentUser: String {
        get {
            return "The current user is '\(userName)'. their email is: \(email)."
        }
    }
    func logIn(user: User9) {
        print(user)
    }
    
}

var signedOn = User9(userName: "pehcatzo", email: "peh@cat.zo", age: 99)
//print(signedOn.currentUser)


//There are other properties and actions associated with a User struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called logIn(user:) where user is of type User. In the body of the method, assign the passed in user to the currentUser property, and print out a statement using the user's userName saying that the user has logged in.

//Below, call the logIn(user:) method and pass in a different User instance than what you assigned to currentUser above. Observe the printout in the console.


// PG.10

//App Exercise - Type Properties and Methods

//These exercises reinforce Swift concepts in the context of a fitness tracking app.

//In another exercise, you added a computed property representing the average mile time from a run. However, you may want to have a calculator of sorts that users can use before their run to find out what mile time they need to average in order to run a given distance in a given time. In this case it might be helpful to have a type method on RunningWorkout that can be accessed without having an instance of RunningWorkout.

//Add to RunningWorkout a type method mileTimeFor(distance:time:) where distance and time are both of type Double. This method should have a return value of type Double. The body of the method should calculate the average mile time needed to cover the passed in distance in the passed in time. Assume that distance is in meters and that one mile is 1600 meters.

//Call the method from outside of the struct and print the result to ensure that it works properly.

struct RunningWorkout10 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        return distance / time
    }
}

RunningWorkout10.mileTimeFor(distance: 1600, time: 10)

