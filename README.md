Employee Expense Tracker

An Oracle APEX application for submitting, searching, approving, and reporting on employee expenses — built as part of the Oracle ACE Apprentice product usage milestone.

Please go through the Employee Expense Tracker Design Document for detailed design.

Product

Oracle APEX (version: 26.1.3), built on apex.oracle.com

What this app does
Expense Entry — employees submit expenses with an attached receipt
My Expenses — employees view their own submission history
Expense Search — cross-employee search with role-gated inline editing (Interactive Grid)
Expense Approval Queue — managers approve or reject pending expenses from their direct reports
Expense Dashboard — spend by category and by month, as live charts
Expense Explorer — faceted search/browse across all expenses

Repository structure
/app    exported APEX application (SQL export)
/db     table DDL and sample data insert scripts
/docs   design document and screenshots

Importing this app
In your own APEX workspace, go to App Builder > Import.
Upload the SQL file from /app.
Run the DDL and insert scripts in /db (in order) to create and populate the supporting tables before running the app.
Install the app, then set up at least one user under Shared Components > Application Access Control so you can log in and test each role.
Documentation

See docs/expense-tracker-design.docx for the full design: entity-relationship diagram, page map, security model, and key technical decisions and lessons learned.
