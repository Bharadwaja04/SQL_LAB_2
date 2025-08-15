# SQL_LAB_2

# Lab 2 – SQL Stored Procedures and Cursors

This repository contains the solutions for CS6.302 – Software System Development, Lab 2 (SQL Stored Procedures and Cursors).  
The lab involves creating and working with MySQL stored procedures, cursors, and conditional logic to perform various database operations.

## Contents
- **q1.sql** – Procedure `ListAllSubscribers()` that iterates through all subscribers using a cursor and prints their names.
- **q2.sql** – Procedure `GetWatchHistoryBySubscriber(IN sub_id INT)` that returns all shows watched by a given subscriber along with watch time.
- **q3.sql** – Procedure `AddSubscriberIfNotExists(IN subName VARCHAR(100))` that adds a subscriber only if they do not already exist in the database.
- **q4.sql** – Procedure `SendWatchTimeReport()` that calls `GetWatchHistoryBySubscriber()` for all subscribers who have watch history.
- **q5.sql** – Procedure `AllSubscribersWatchHistory()` that loops through all subscribers and prints their watch history.

## Database Schema
The assignment uses three tables:
- **Shows** – Stores show details like title, genre, and release year.
- **Subscribers** – Stores subscriber details like name and subscription date.
- **WatchHistory** – Stores the watch history linking subscribers to shows with watch duration.

## How to Run
1. Create the database and load the schema and sample data as per `Activity.pdf`.
2. Run the `.sql` scripts in sequence (`q1.sql` → `q5.sql`).
3. Test the stored procedures using the provided sample data or your own data.

## Technologies Used
- MySQL
- MySQL Workbench

---
