# Private Events

This project is part of The Odin Project: [Private Events](https://www.theodinproject.com/lessons/ruby-on-rails-private-events) in the Ruby on Rails curriculum.

## Learning Objectives

By the end of this project, you will be able to:

- Create a Rails application with user authentication and event management features.
- Implement many-to-many relationships in Rails using a join table.
- Develop CRUD functionality for events and user attendance.
- Utilize class methods and scopes to manage event queries.
- Understand how to manage user associations effectively within Rails.

## Assignment

1. Set up the initial repository and create a new private-events Rails application.
2. Build the Event and User models with necessary associations.
3. Implement the Event attendance feature using a join table.
4. Complete finishing touches and enhance user experience.

## Basic Setup

1. **Data Models**: Plan the data models, focusing on users and events with many-to-many relationships.
2. **Create Rails App**: Generate your new private-events Rails app and initialize a GitHub repository. Update your README.
3. **Devise for Authentication**: Set up Devise to manage user authentication and create the User model.

## Features

- **Event Creation**: Users can create events, which includes a form for event details.
- **Event Display**: Event index and show pages to display event details and attendees.
- **User Associations**: Users can view events they have created and those they are attending.

## Event Attendance

- **Many-to-Many Relationships**: Implement a join table to manage event attendees.
- **User Interface**: Provide users with the ability to sign up for events.
- **Attendee Lists**: Display attendees for each event and a list of events a user has attended, categorized by past and upcoming events.

## Finishing Touches

- **Event Scopes**: Separate past and upcoming events using class methods and scopes.
- **Navigation**: Add navigation links to enhance user experience.
- **Extra Credit Features**: Implement functionality for editing/deleting events and managing attendance.

## Technologies Used

- Ruby on Rails
- Devise for authentication

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/jambalong/private-events.git
   ```

2. Navigate to the project directory:
   ```bash
   cd private-events
   ```

3. Install dependencies:
   ```bash
   bundle install
   ```

4. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:
   ```bash
   rails server
   ```

Access the application at `http://localhost:3000`.
