# Top 10 Restaurants in Boulder, Colorado according to Trip Advisor.com ranked by their average inspection score based off of public inspection records. 

Let's say you're visiting Boulder and you want to check out the top 10 restaurants to eat. 
You hop on your mobile device and the top ten restaurants comes up on Trip Advisor. [Here](https://www.tripadvisor.com/Restaurants-g33324-Boulder_Colorado.html) is a link that shows the top restaurants to eat in Boulder according to Trip Advisor.

![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Trip%20Advisor's%20Rankings.png)


You're not familiar with the area so you want to make sure you don't get food poisoning, and you want to ensure the general cleanliness, so you hop over [here](https://public.tableau.com/profile/steven.lutton#!/vizhome/TripAdvisorsTop10RestaurantsbyAverageInspectionScore/Top10Colored) to my Tableau project.

I have the top 10 restaurants according to Trip Advisor ranked by their average inspection score. The lower the score the better. 

![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/My%20Rankings.png) ![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Standing%20Categories.png)

[Here](https://assets.bouldercounty.org/wp-content/uploads/2017/07/how-to-calculate-inspection-ratings.pdf) is a link explaining the categories that certain violations fall under.
![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Type%20of%20Violation.png)

and [Here](https://assets.bouldercounty.org/wp-content/uploads/2017/02/CalculateInspectionRatings.pdf) is a link that will help to explain the points attributed to each violation.
![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Points%20for%20Violation.png) 

If you would like to dig deeper into the data yourself I have provided my original data set including only CO Restaurants with a 5 digit zip code, and excluding all records showing a 0 or NULL for the inspection points. (Restaurants.csv)

I used PostgreSQL to filter through the original dataset and have provided SQL queries that I used to get the cleanest and most useful data.  

If you would like to download the original dataset you can do so [here](https://data.colorado.gov/Municipal/Restaurant-Inspections-in-Boulder-County-Colorado/tuvj-xz3m)

I have also included CSV's and Excel workbooks with pivot tables for the top 10 restaurants in Boulder, Colorado according to Trip Advisor.com, as well as the dataset where I found the license types (co_liquor_licenses)

I am developing a personal top 10 that allows you to select your own 10 restaurants to investigate and locate on the map. You will be able to highlight specific restaurants from there and see their location on the map and address in the tooltip as well as (maybe a phone number) an interactive table that details the inspections themselves. You can then drill them down to their violation group and if they are critical/noncritical. and maybe by inspection type. and restuarant type. 




