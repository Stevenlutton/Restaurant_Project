Top 10 Restaurants in Boulder, Colorado according to Trip Advisor.com ranked by their average inspection score based off of public inspection records. 
======
Let's say you're visiting Boulder and you want to check out the top 10 restaurants to eat. 
You open your mobile device and a simple "Best places to eat in Boulder" search returns [this](https://www.tripadvisor.com/Restaurants-g33324-Boulder_Colorado.html) list of restaurants from TripAdvisor.com. 

![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Trip%20Advisor's%20Rankings.png) ![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Restaurant%20Score%20Standing.png)


I have the top 10 restaurants according to Trip Advisor ranked by their average inspection score. The lower the score the better. 

![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/My%20Rankings.png) ![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Standing%20Categories.png)

![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Top10Chart.png)

[Here](https://assets.bouldercounty.org/wp-content/uploads/2017/07/how-to-calculate-inspection-ratings.pdf) is a link explaining the categories that certain violations fall under.
![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Type%20of%20Violation.png)

and [Here](https://assets.bouldercounty.org/wp-content/uploads/2017/02/CalculateInspectionRatings.pdf) is a link that will help to explain the points attributed to each violation.
![alt text](https://github.com/Stevenlutton/Restaurant_Project/blob/master/Images/Points%20for%20Violation.png) 

If you would like to dig deeper into the data yourself I have provided the [original data set](https://data.colorado.gov/Municipal/Restaurant-Inspections-in-Boulder-County-Colorado/tuvj-xz3m) as well as [my dataset](https://github.com/Stevenlutton/Restaurant_Project/blob/master/data/Restaurants.csv) which includes only CO Restaurants with a 5 digit zip code, and excludes all records showing a 0 or NULL for the inspection points. (Restaurants.csv)

I used PostgreSQL to filter through the original dataset and have provided SQL queries that I used to get the cleanest and most useful data to input to Tableau. (Restaurant_SQL.sql) 

If you would like to download the original dataset you can do so [here](https://data.colorado.gov/Municipal/Restaurant-Inspections-in-Boulder-County-Colorado/tuvj-xz3m).

I have also included CSV's and Excel workbooks with pivot tables for the top 10 restaurants in Boulder, Colorado according to Trip Advisor.com, as well as the dataset where I found the license types. (co_liquor_licenses)

Click [here](https://public.tableau.com/profile/steven.lutton#!/vizhome/TripAdvisorsTop10RestaurantsbyAverageInspectionScore/Top10Dashboard?) to access my Tableau presention.  (((story still to be added)))

My first dashboard displays the top 10 restaurants from Trip Advisor's list ranked according to their average inspection scores. When you are ready to continue, read the next paragraph for instructions, then click the green arrow in the bottom right corner.

On the next dashboard I have developed an interactive user experience so that users can select restaurants to investigate and locate on the map. If you hover over a bubble it will show you the restaurant information on the map as well as the scatter plot. The ideal quadrant on the scatter plot is below the average inspection score and above the average times inspected. If you select a restaurant you will be brought to a table with details for each inspection. You can click the back button to return to the map and select a different restaurant. You can filter down to specific restaurants on the map using the filters on the side. On the table you can decide if you want to see all the inspection details or only the violations that are considered "critical", which means the violation can create a food-bourne illness, as well as the type of inspections displayed. 




