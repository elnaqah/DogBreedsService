
# 🐕 Dog Breeds API

This is a simple API built with Swift and Hummingbird that provides a list of dog breeds and detailed characteristics of each breed. You can fetch a list of dog breeds, and get more information on a specific breed by its ID.

## Features

- **List Dog Breeds**: Provides a list of dog breeds, including their name and size.
- **Breed Details**: Fetch detailed characteristics of a specific breed such as life expectancy, temperament, origin, and activity level.

## Endpoints

### 1. List all dog breeds

**GET** `/breeds`

Returns a list of all available dog breeds.

#### Example Request:
```bash
curl http://localhost:8080/breeds
```

#### Example Response:
```json
[
    {
        "id": 1,
        "name": "Golden Retriever",
        "size": "Large"
    },
    {
        "id": 2,
        "name": "French Bulldog",
        "size": "Small"
    },
    {
        "id": 3,
        "name": "German Shepherd",
        "size": "Large"
    }
]
```

### 2. Get details of a specific dog breed

**GET** `/breeds/:breedID`

Fetches the details and characteristics of a specific breed by its `breedID`.

#### Example Request:
```bash
curl http://localhost:8080/breeds/1
```

#### Example Response:
```json
{
    "id": 1,
    "name": "Golden Retriever",
    "size": "Large",
    "life_expectancy": "10-12 years",
    "temperament": "Friendly, Intelligent, Devoted",
    "origin": "Scotland",
    "activity_level": "High"
}
```

## Setup & Installation

### Prerequisites

- Swift 5.9 or higher
- Swift Package Manager (SPM)

### Step-by-Step Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/elnaqah/exampleServer.git
   cd exampleServer
   ```

2. Install dependencies:
   ```bash
   swift build
   ```

3. Run the API:
   ```bash
   swift run
   ```

4. Access the API at `http://localhost:8080`.

## Project Structure

```
ExampleApi
├── Package.swift
├── README.md
├── Sources
│   ├── Controllers # Controller define endpoints and serve requests
│   ├── Models   # Codable models returned as a response of the service
│   └── service.swift # The main entry point for the project
└── Tests # Unit tests target
```

## Contributing

Feel free to fork the project and submit pull requests with more dog breeds, breed characteristics, bug fixes, or features.

## License

This project is licensed under the MIT License.
