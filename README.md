# justplaymobile

Welcome to our mobile application that brings you closer to your favorite sports teams and events!
With this app, you can easily explore and join sports-related activities of your interest.

## Getting Started
- Before you start developing with JustPlayMobile, ensure you have the following prerequisites:

## Dependencies

* Dart 2.19.6
* Flutter 3.7.12

## Installation

1. Install Dart and Flutter.
2. Clone this [repository](https://github.com/cafoga98/justplaymobile.git) .
3. Run `flutter pub get` to get the dependencies of this project.
4. Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate code derived from annotations and generated sources that depend on `build_runner`.
5. Run `flutter run` to build and run the app.

## Usage
Welcome to our mobile application that brings you closer to your favorite sports teams and events! With this app, you can easily explore and join sports-related activities of your interest. We've divided the application into four main views to make your experience smooth and enjoyable:

- **Login Screen**: Begin your journey by signing in with the following credentials:

  - Username: camilo
  - Password: camilo
  
  <p float="left">
  <img src="https://github.com/cafoga98/justplaymobile/blob/main/documentation/login_screen.jpg" width="200" />
  </p>

- **Cities Selection**: After logging in, you'll land on the cities selection screen. Here, you need to choose your location using three dropdown menus:

  - Select your country
  - Choose your state or province
  - Pick your city

  <p float="left">
  <img src="https://github.com/cafoga98/justplaymobile/blob/main/documentation/cities_screen.jpg" width="200" />
  </p>

- **Events and Matches**: Once your location is set, you'll be directed to the main screen displaying a list of sports events and matches. Explore the various options available and find the ones that pique your interest. You can click on any event to get more details or join it.
  <p float="left">
  <img src="https://github.com/cafoga98/justplaymobile/blob/main/documentation/sports_screen.jpg" width="200" />
  </p>

- **Event Details**: When you click on an event or match, you'll be taken to a screen that provides you with all the information you need. This includes the event's date, time, location, description, and more. It's the perfect place to decide if you want to attend or join the event.
  <p float="left">
  <img src="https://github.com/cafoga98/justplaymobile/blob/main/documentation/details_screen.jpg" width="200" />
  <img src="https://github.com/cafoga98/justplaymobile/blob/main/documentation/detail_screen_bottom.jpg" width="200" /> 
  </p>
With these four main views, you can effortlessly navigate through the app and make the most of your sports-related interests. Enjoy your sports-filled journey with our mobile application!

## Contributors

* [Cesar Forero](https://github.com/cafoga98)

## Documentation
* [Prototype design](https://github.com/cafoga98/justplaymobile/blob/main/documentation/WireGen%20-%20AI%20GPT%20wireframe%20generation%20(Community).pdf)
* [Documentation](https://github.com/cafoga98/justplaymobile/blob/main/README.md)

## ApiRest Services
For service consumption, [https://app.wiremock.cloud/](https://app.wiremock.cloud/) was used as a provider to create the mock services.

**Uri Base**
- `https://65z9r.wiremockapi.cloud/availableGames`

There were 2 consumptions of services:

1. `/avaliableGames`
   * Method:GET
   * Description: Retrieves information about available games.

    **Request Parameters**:
   * None required for this request.

   **Successful Response (Status Code 200)**:
   * Description: Returns information about games available for today and tomorrow.
   
   **Response Structure**:

   * Today (Array of objects): Contains information about games available for today.

     * genrGame (string): Game genre (skate, scooter, soccer, cycling, basketball).

     * time (string): Game time.

     * shortDescription (string): A brief game description.

     * carousel (Array of strings): URLs of images related to the game.

     * host (Object): Information about the game host.

     * name (string): The host's name.

     * profileImage (string): URL of the host's profile image.

     * eventTitle (string): The event or game title.

     * address (string): Game location address.

     * duration (string): Game duration.

     * price (string): Game price.

     * description (string): Detailed game description.

     * amenities (Array of strings): List of available amenities.

     * players (Array of objects): List of players.

     * name (string): Player's name.

     * profileImage (string): URL of the player's profile image.

     * maxPlayers (string): The maximum number of players allowed in the game.

     * recommendations (Array of strings): Recommendations related to the game.

     * Tomorrow (Array of objects): Similar to "Today," but contains information about games available for tomorrow.

    **Response Example**
    ```json
    {
      "Today": [
        {
          "genrGame":"cycling",
          "time": "6:20 p. m.",
          "shortDescription": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          "carousel": [
            "https://picsum.photos/500",
            "https://picsum.photos/500",
            "https://picsum.photos/500"
          ],
          "host": {
            "name": "Michael Scott",
            "profileImage": "https://picsum.photos/250?image=10"
          },
          "eventTitle": "Huntington Beach Sport Complex",
          "address": "Cll 34 #42-43",
          "duration": "60 min",
          "price": "4.99",
          "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
          "amenities": ["parking", "wifi", "food store", "Hydration"],
          "players": [
            {
              "name": "Pepito Perez Gomez",
              "profileImage": "base64_random"
            },
            {
              "name": "John Smith",
              "profileImage": "https://picsum.photos/250?image=20"
            },
            {
              "name": "Emily Johnson",
              "profileImage": "https://picsum.photos/250?image=30"
            },
            {
              "name": "Michael Brown",
              "profileImage": "https://picsum.photos/250?image=40"
            }
          ],
          "maxPlayers": "4/10",
          "recommendations": [
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s..."
          ]
        }
      ],
      "Tomorrow": [
        {
          // ... (estructura similar a "Today")
        }
      ]
    }


2. `/loginFake`
   * Method: Post
   * Description: Allows you to log in.

   **Request Parameters**:
   * String userName.
   * String password.

   **Successful Response (Status Code 200)**:
   * Description: Returns message like "Login Exitoso".

   **Request Structure**:
    ```json
    {
    "userName": "camilo",
    "password": "camilo"
    }
