Author: Riley Moore, Mackenzie Hamelett, and Noah Brunnet
Purpose: Read in orders and customer records, store records, then find the best travel plan according to that Customers type. Finally print records and plan to new text file.

This program reads in customer orders from a text file in the format of: 

  - Number of customers
  - First Name
  - Last Name
  - Customer Type (Regular, Student, Military, Senior)
  - Reward Number or NA if a regular customer, School Name if a student, Military Branch if in the military, Birth
  Year if a senior
  - Email Address
  - Mobile Phone Number
  - …repeated
  
  
  Once the CustomerArray file is called in main, the arguments will be read in and stored into the Customer object array.
  This acts as a data base for the Customer records.
  
  After all the records are stored, another text file containting the trips per day, trips per week day, trips per weekend, and weeks of travel per month.
  Then the Customer object array will be ran to the according TYPE java file of the customers algorithm to select the best economical plan.
  
  Finally the main file call Customer Array to print out the customer records and best travel plan to a new text file.