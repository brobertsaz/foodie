# Foodie App

### Food Trucks

Create a service that tells the user what types of food trucks might be found near a specific location on a map.

The data is available on [DataSF: Food Trucks](https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat)

### Technical spec

The architecture will be split between a back-end and a web front-end, for instance providing a JSON in/out RESTful API. Make sure to include both front-end and back-end.

### The Problem

People in San Francisco are always hungry.  They need a way to find the nearest food trucks to them so they can get lunch.  We need to create a service so that a user can enter their address and then see the closest trucks to them in addition to the food items available for that food truck.

### The Solution

The live app is located [here](http://sffoodie.herokuapp.com/)

The data is pretty much static as it represents the permitted areas for the food trucks.  For this reason and simplicity sake, I created a seed file to populate the food truck database.  Had this been for live truck locations, I would not have gone with this approach.  For a "live" application, I would create a nightly rake task to update any new permitted locations.

### Install

+ git clone git@github.com:brobertsaz/foodie.git@github
+ cd into foodie
+ bundle
+ rake db:setup
+ rails server


### The Stack
+ Ruby on Rails
+ PostgreSQl
+ Bootstrap CSS
+ jQuery
+ Google Maps API
+ gmaps4rails gem
+ geocoder gem


### TO DO
+ Change the plus sign on click
+ Adjust the zoom for the single location
+ Allow to use the users location based on IP
+ Add filtering based on the food items

Reasoning behind your technical choices, including architectural. Trade-offs you might have made, anything you left out, or what you might do differently if you were to spend additional time on the project.