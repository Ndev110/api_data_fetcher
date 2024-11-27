# API Data Fetcher

This is a simple Rails app that fetches and displays data from the Brewery API.

- Fetches data from a public API using a service layer.
- Handles API errors.
- Provides an endpoint to retrieve brewery data as JSON.

## Setup Instructions
1. Clone the repository

2. Install dependencies:

```bash
bundle install
```

3. Run the server:

```bash
rails server
```

4. Access the endpoint:

Navigate to [http://localhost:3000/breweries] to check the breweries data.

## API
I selected this API because it provided a list of data that could be displayed in various formats. Additionally, it allowed me to implement features like pagination to enhance the user experience.

## Limitations/Trade offs
- The fetched data is not persisted in the database.
- No filtering or sorting functionality is implemented.
- For the frontend, I did not use any framework.
- Due to time constraint, I did not add test cases.

## Enhancements
- The frontend can be more enhanced.
- Add filters and provide sorting options for a more interactive user experience.
- A separate page for each brewery can be created to list all the details.
- Write test cases using vcr.
