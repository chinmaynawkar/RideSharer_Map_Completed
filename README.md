# RideSharer_Map_Completed
The RideSharer app is designed to provide users with a ride-sharing service. The project focuses on integrating a map view into the app and displaying the user's current location. Additionally, it handles scenarios where the user denies location access and shows an appropriate alert message.
Description:

Map Integration: The RideSharer app incorporates a map view into its interface. Using Auto Layout constraints, the map view is configured to cover the entire view, similar to how the ride history table view was implemented.

User's Current Location: The app utilizes the Core Location framework to retrieve the user's current location. By requesting location access permission and enabling the display of the user's location on the map, the app showcases the user's real-time position.

Handling Location Access Denial: If the user denies access to their location, the app responds by presenting an alert. This alert informs the user that they have not granted permission to track their location. This feedback ensures a clear understanding of the app's functionality.

Testing Location Request: The app is tested to ensure the location request is correctly displayed. When prompted for permission, the user allows access, resulting in their location being displayed accurately on the map. To validate the handling of denial scenarios, the location permissions are reset by removing the app and re-running it. This time, when the user denies location permission, the app should display the appropriate alert.

Project Description: The RideSharer app is a ride-sharing service that enables users to request and share rides with others. With the added map functionality, users can view their current location and track their position in real-time. The app provides a seamless and user-friendly experience while handling scenarios of location access denial with appropriate alerts.
