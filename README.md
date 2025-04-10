# 🌄 WanderFind

**WanderFind** is a Flutter app that showcases a collection of stunning mountains around the world using horizontally scrollable cards. Each card features an image, name, and location, with a clean, reusable UI structure.

## 📱 Features

- Home screen with transparent AppBar and navigation drawer
- Horizontally scrollable list of mountain cards (`ListView.builder`)
- `AppCard` widget with image, title, and location
- Basic search UI component (non-functional for now)
- Modular folder structure
- Profile page with avatar, description, achievements, and social media buttons
- Scrollable achievements section with animated cards
- Bottom navigation bar with navigation between pages (Home and Profile)

## 📁 Project Structure

```
lib/
├── assets/           # Asset files (e.g., images, icons)
├── data/             # Mock data (e.g., mount_items.dart)
├── model/            # Data models (e.g., MountModel)
├── pages/            # Pages and screens (e.g., HomePage)
├── widgets/          # Reusable widgets (AppCard, AppHeader, etc.)
├── main.dart         # Entry point
```

## 🧱 Tech Stack

- Flutter
- Dart
- Material Design

## 🚀 Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/wanderfind.git
   cd wanderfind
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## 🔮 Future Improvements

- Implement functional search with filters
- Add detail screen for each mountain
- Integrate backend API for dynamic content
- Add animations for smooth transitions

## 📸 Preview

![AppBar and List](lib/assets/screens/WanderFind.png)

![Home](lib/assets/screens/home.jpeg)

![Profile](lib/assets/screens/profile.jpeg)

## 👨‍💻 About the Developer

This app was created by Lucas, a passionate mobile developer who loves building beautiful and functional apps using Flutter. Feel free to connect on social media for more updates and insights into future projects.

Made with ❤️ using Flutter — _Explore the heights with WanderFind_
