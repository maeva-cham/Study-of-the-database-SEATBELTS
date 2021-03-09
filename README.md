# Study-of-the-database-SEATBELTS

# INTRODUCTION 

The United Kingdom is currently one of the safest countries in Europe in terms of road safety. The number of deaths per kilometer driven is much lower. How did they achieve such excellent results? these results are the result of a scientific study on numerous datasets. we will focus on one Dataset in particular: Seatbelts.
The seatbelts study is a study conducted on the wearing of seatbelts of drivers. This series gives monthly totals of car drivers in Britain killed or seriously injured from January 1969 to December 1984. As a result of this study the compulsory wearing of seatbelts was introduced on 31 January 1983. We can assume that researchers have asked themselves this question: What are the factors that could cause road accidents? What is the necessity of wearing a seatbelt? The data provide useful insights not only into the effect of seatbelts, but also into driving habits in general.
First, we will present the data and introduce the study to you. In a second time, we represent you the dataset in graphic form. we will be able to deduce some hypothesis from it. In the third part, we are going to test the hypothesis that we described before. In the last part, we will see how to adapt the model in order to reduce the number of road accidents.

# I - Data exploration
## - Presentation of the dataset

This is a data table showing the number of accidents per month from January 1969 to December 1979. This dataset has a dimension with a number of inscriptions of 192 and a few categories which is 8.
The different categories are as follows:
− Drivers: the number of drivers kills in a car accident
− DriversKilled : the number of drivers who killed the other diver involved in the accident
− Front: front passengers killed or seriously injured.
− Rear: rear passengers killed or seriously injured.
− Kms: distance traveled.
− Petrol price: price of petrol
− Van killed: number of van drivers ("heavy goods vehicles") involved in an accident
− Law : enforcement of the front seat belt law in 1970

# II - Data visualizations
## - General situation

#### Graph: Number of drivers killed between 1969 to 1979
We have a graph representing the evolution of the number of drivers killed from the year 1969 to the year 1979. Thanks to this graph, we can see that the number of conductors is decreasing over the years. The number of conductors is deceasing over the years as the petrol price rises.

#### Graph: distribution of the petrol price in 1969 to 1979
This graph represents the evolution of the price of oil from 1969 to 1979. The area of each rectangle is proportional to an associated frequency. We notice that the price of oil varied a lot in those years. The curve in blue represents a kernel density estimator. It allows to follow the extent of the data. The blue curve follows the progression of the data well, so the estimate is viable. The green curve represents the standard deviation. It allows to see the deviation of the data. The curve in gray allows to see the distribution of the data.

#### Graph
