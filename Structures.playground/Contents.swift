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



//PG.2

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
