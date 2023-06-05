<a name="readme-top"></a>

<br />
<div align="center">

<h3 align="center">🍵 Animal Crossing Fish API</h3>

  <p align="center">
    An application to serve as the backend for <a href="https://github.com/Kanderson58/animal-crossing">Animal Crossing</a>.
  </p>
  <p>
    Built as a service that makes API calls to <a href="https://acnhapi.com/">Animal Crossing: New Horizons API</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#testing-with-rspec">Testing With RSpec</a></li>
      </ul>
    </li>
    <li><a href="#available-endpoints">Available Endpoints</a></li>
    <li><a href="#goals">Goals</a></li>
  </ol>
</details>


<br>

<!-- ABOUT THE PROJECT -->
## About The Project
<br>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With:
  <p>
  <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white">
  </p>

**3.1.1**

  <p>
  <img src="https://img.shields.io/badge/Rails-CC342D?style=for-the-badge&logo=ruby&logoColor=white">
  </p>

**7.0.4**

  <p>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=ruby&logoColor=white">
  </p>

**Postgres 14**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To run the application locally, this repository will need to be cloned and set up fully with required gems.

<br>

### Installation

1. Clone the repo:
   ```bash
   git@github.com:4D-Coder/amimal-crossing-fish-api.git
   ```

2. Install gems:
   ```bash
   bundle install
   ```

3. To establish the database, run:
   ```bash
   rails db:create
   ```
   - if you do not see `Created database 'animal_crossing_fish_api_development'` Run:
   ```bash
   RAILS_ENV=development rails db:create
   ```

4. To migrate the database configurations into your local development and test environment, run:
   ```bash
   rails db:migrate
   ```
5. To boot up localhost (default is port 3000), run:
  ```bash
  rails s
  ```
<br>

  Inspect the `/db/schema.rb` and compare to the 'Schema' section below to ensure this migration has been done successfully.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<br>

## Available Endpoints
- This API can be called locally using a program like [Postman](https://www.postman.com).

- *Note:* Necessary parameters marked with {}

<br>

## Update Homepage's Song (Happy Path)
Request URI: <br>
```http
PUT /api/v1/music
```

<br>

Body: <br>
```json
{
  "weather":"Sunny"
}
```

Response:

```json
{
  "data": {
    "id": "45",
    "type": "song",
    "attributes": {
      "file_name": "BGM_24Hour_14_Sunny",
      "hour": 14,
      "id": 45,
      "music_uri": "https://acnhapi.com/v1/hourly/45",
      "weather": "Sunny"
    }
  }
}
```
| Code | Description |
| :--- | :--- |
| 200 | `OK` |

Notes:
- Will match the song's hour attribute based on the Time.now API's current hour



<p align="right">(<a href="#readme-top">back to top</a>)</p>
