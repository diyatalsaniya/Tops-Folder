Blood Bank Management System

Project Description: 

The Blood Bank Management System is a Flutter-based mobile application designed to streamline blood donation processes. Integrated with Firebase Firestore, it manages donor and recipient data, including blood group details and donation history, in real time. The app offers a user-friendly interface for registering donors, searching blood groups, and tracking donations. It leverages StreamBuilder for live data updates and includes a search feature to filter donors by blood group (e.g., A+, B-). Built with Dart, it ensures cross-platform compatibility for Android and iOS. The project prioritizes efficient data handling, secure authentication, and an intuitive UI, making it valuable for healthcare organizations and blood banks. Contributions are welcome via pull requests.



Features:

Donor registration with blood group and contact details.
Real-time search for donors by blood group.
Donation history tracking for transparency.
Secure user authentication via Firebase.
Cross-platform support for Android and iOS.



Technologies Used:

Flutter/Dart: For cross-platform mobile app development.
Firebase Firestore: Real-time database for data management.
Firebase Authentication: Secure user login.
StreamBuilder: For dynamic, real-time UI updates.



Project Structure:

lib/: Core Flutter app files, including Dart scripts for UI and logic.
main.dart: Entry point for the application.
pages/: Screens for donor registration, search, and history.
assets/: Images and GIFs for UI elements like splash screen.
pubspec.yaml: Manages dependencies (e.g., cloud_firestore, firebase_auth).
android/, ios/: Platform-specific configurations.
README.Rmd: Project overview and details.
