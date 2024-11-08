---
tags:
  - privatbank
  - java
  - test
  - interview
  - finance
  - github
link: 
aliases:
---


### Key Features:

1. **Task Management**:
    
    - The application offers CRUD operations for tasks. Users can create tasks, update their details and statuses, view all tasks, and delete tasks.
    - Tasks are represented by a `Task` model, which contains information like the title, description, and status.
2. **RSS Feed Generation**:
    
    - The application includes an `RssFeedService` that allows tasks to be converted into RSS feed items. This enables the syndication of task updates and provides a way to view tasks in an RSS reader.
    - Each task is added to a feed, which is generated and can be served to clients as an RSS feed.
3. **REST API**:
    
    - The task management operations are exposed via a REST API through the `TaskController` class. This API allows clients to interact with the system programmatically, making it possible to create, update, retrieve, and delete tasks over HTTP.
4. **PostgreSQL and H2 Database Support**:
    
    - The application uses a PostgreSQL database in production and an H2 in-memory database for development and testing. The data is managed through the `TaskRepository`, which interacts with the database using Spring Data JPA.
5. **Docker Support**:
    
    - The project includes a `Dockerfile` and `docker-compose.yml` configuration, which make it easy to containerize the application and orchestrate it with other services like PostgreSQL. Docker Compose helps in managing multi-container applications.
6. **Testing**:
    
    - Unit tests are provided for the service, controller, and repository layers of the application to ensure that the core functionalities, such as task management and RSS feed generation, work as expected. The project uses JUnit 5 for testing and Mockito for mocking dependencies.
7. **Logging**:
    
    - The application is configured with Logback for logging, allowing for efficient tracking of application behavior and debugging.

### Main Components:

- **Task**: Represents a task entity with attributes like `title`, `description`, and `status`.
- **TaskController**: Exposes RESTful endpoints for managing tasks.
- **TaskService**: Contains the business logic for handling task-related operations.
- **TaskRepository**: Handles database interactions for storing and retrieving task data.
- **RssFeedService**: Responsible for creating and managing RSS feeds from tasks.

### Application Workflow:

1. Users or clients can interact with the REST API to perform task operations, such as creating a new task, updating an existing task's status, retrieving all tasks, or deleting a task.
2. The application stores task data in a PostgreSQL (or H2) database.
3. The RSS feed service can aggregate tasks and generate an RSS feed, allowing users to subscribe and receive updates on task changes.
4. The application is designed to be containerized using Docker, making deployment and scaling easier.

This app is ideal for simple task management and use cases where task updates need to be syndicated via RSS. The extensible architecture allows easy integration with other systems and can be scaled based on needs.



### Test Coverage

Test coverage for the **Privatbank** application can be found in the following location:

- **Jacoco Report**: The application uses **Jacoco** for generating code coverage reports during the testing process. After running the tests, a detailed report of the test coverage can be found at:
    
    bash
    
    Copy code
    
    `target/site/jacoco/index.html`
    
    This report provides insights into the coverage of the unit and integration tests across various parts of the application, such as controllers, services, and repositories. It includes metrics like line coverage and branch coverage, helping to identify untested areas of the code.

Make sure to generate this report by running the tests using Maven:

bash

Copy code

`mvn test`





## REST API Commands with Descriptions

### 1. Create Task

- **Method**: POST
- **Endpoint**: `/api/tasks`
- **Input**: JSON object representing the new task
    
    json
    
    Copy code
    
    `{   "title": "Task Title",   "description": "Task Description",   "status": "Pending" }`
    
- **Output**: The created task with its assigned ID

### 2. Delete Task

- **Method**: DELETE
- **Endpoint**: `/api/tasks/{id}`
- **Input**: Task ID in the URL path
- **Output**: Confirmation of successful deletion (HTTP 200 OK)

### 3. Update Task Status

- **Method**: PUT
- **Endpoint**: `/api/tasks/{id}/status`
- **Input**:
    - Task ID in the URL path
    - `status` as a request parameter
- **Example**: `/api/tasks/1/status?status=Completed`
- **Output**: The updated task with the new status

### 4. Update Task Fields

- **Method**: PATCH
- **Endpoint**: `/api/tasks/{id}`
- **Input**:
    
    - Task ID in the URL path
    - JSON object with fields to update
    
    json
    
    Copy code
    
    `{   "title": "Updated Title",   "description": "Updated Description" }`
    
- **Output**: The updated task with the changed fields

### 5. Get List of Tasks

- **Method**: GET
- **Endpoint**: `/api/tasks`
- **Input**: None
- **Output**: List of all tasks in JSON format




























