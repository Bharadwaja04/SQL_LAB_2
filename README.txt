Lab 2 – SQL Stored Procedures and Cursors
-----------------------------------------

Roll Number: <rollnumber>
Course: CS6.302 - Software System Development
Activity: Lab 2 - SQL Stored Procedures and Cursors

-----------------------------------------
Steps to Execute the Scripts
-----------------------------------------

1. Open MySQL Workbench and connect to your database server.

2. Create the database (if not already created) and select it:
   CREATE DATABASE Lab2;
   USE Lab2;

3. Create the tables and insert sample data:
   -- Copy the CREATE TABLE and INSERT statements from Activity.pdf 
   -- into MySQL Workbench and run them.

4. Run the procedure scripts in the following order:

   SOURCE q1.sql;   -- Creates ListAllSubscribers()
   SOURCE q2.sql;   -- Creates GetWatchHistoryBySubscriber(IN sub_id INT)
   SOURCE q3.sql;   -- Creates AddSubscriberIfNotExists(IN subName VARCHAR(100))
   SOURCE q4.sql;   -- Creates SendWatchTimeReport()
   SOURCE q5.sql;   -- Creates AllSubscribersWatchHistory()

5. Test each stored procedure:

   CALL ListAllSubscribers();

   CALL GetWatchHistoryBySubscriber(1); 
   -- Replace 1 with the SubscriberID you want to check.

   CALL AddSubscriberIfNotExists('New Subscriber');

   CALL SendWatchTimeReport();

   CALL AllSubscribersWatchHistory();

-----------------------------------------
Git Repository Link
-----------------------------------------
<your-git-repo-link>

-----------------------------------------
Notes:
-----------------------------------------
- Ensure that the `Shows`, `Subscribers`, and `WatchHistory` tables exist before running the stored procedures.
- The procedures use the sample data provided in Activity.pdf, but you may add more data for testing.
- If you re-run the scripts, you may need to drop the existing procedures using:
  DROP PROCEDURE IF EXISTS procedure_name;
