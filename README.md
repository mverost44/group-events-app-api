## READ ME
## List of Technologies Used
-Ruby on Rails -Atom -GitHub -Ubuntu Bash -web pack (for grunt serve)

## Description of SetSpace
SetSpace is a full stack web application that connects users to public groups and events.  A User has the ability to: -Create and edit a group
-Create and delete events within their groups
-View all public groups
-Join a public group
-View groups that they are a member of
-View groups that they created
-View events posted in public groups
-Join events posted in a public group
-View users that are attending the same event


## Description of API
The SetSpace API was built using Ruby on Rails and functions with a relational database.  The database consists of 3 main tables:
-Users
-Groups
-Events

And 2 Join tables that allow relationships between the main tables:
-AttendingMembers
-GroupMembers

These relationships make it possible for a User to perform CRUD actions on groups and events they own, while maintaining the ability to belong to many groups and attend many events.  The API utilizes custom Rails queries to authenticate users before locating and altering data specific to user requests.

## Planning && Process
My first step towards tackling the SetSpace API was creating a detailed ERD that displayed all necessary tables and relationships.  When a concrete framework was in place, I began building the database one table at a time and testing frequently with curl scripts and the console.  Once the database was functioning and seeded with data, I was able to write custom queries to allow for specific requests from users.

## Future Iterations
In future versions of this app I want to incorporate mailers, allow users to connect as 'friends', and introduce private groups.

## User Stories:
1. As a user I want to create, update, and delete a group.
2. As a user I want to view all groups.
3. As a user I want to join a group.


## Link to ERD
-ERD https://www.lucidchart.com/documents/view/86298d36-6c17-4e81-9285-582bec6eeb13/0

## Link to front-end client and Repo
Repo: https://github.com/mverost44/group-events-app-client

Client: https://mverost44.github.io/group-events-app-client
