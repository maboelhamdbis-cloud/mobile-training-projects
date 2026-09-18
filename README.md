# Mobile Training Projects

It contains mobile projects that I have practiced on.

## Projects List

### 1. Birthday Card App 🎂
A very simple Flutter application show a birthday card interface.

**What I learned from this project:**
* **Basic Flutter Architecture:** Understood the structure of `StatelessWidget` and the core configuration of a `MaterialApp`.
* **Asset Image Integration:** Learned how to configure and display local images (`AssetImage`) properly using the `pubspec.yaml` file.
* **UI Layouts:** Learned how to center elements using the `Center` widget.

### 2. Business Card App 📇
A professional business card mobile application that displays personal contact information in an elegant layout.

**What I learned from this project:**
* **Vertical Layouts:** Mastered the use of the `Column` widget to align multiple elements vertically using `mainAxisAlignment`.
* **Advanced UI Components:** Practiced using `CircleAvatar` for circular profile pictures and nested backgrounds.
* **List Components:** Implemented `Card` and `ListTile` to create clean, responsive contact rows containing icons and text.
* **Custom Typography:** Learned how to import and apply custom Google fonts (`Pacifico`) to enhance text styling.

### 3. Basketball Points Counter App 🏀
An interactive sports points counter application designed to track and manage scores for two teams simultaneously.

**What I learned from this project:**
* **State Management Basics:** Stepped up from static UIs to dynamic ones by mastering `StatefulWidget` and triggering UI rebuilds with `setState()`.
* **Horizontal & Nested Layouts:** Utilized the `Row` widget alongside nested `Column` layouts to structure a clean, side-by-side comparison screen.
* **Interactive UI Controls:** Implemented custom functional buttons (`MaterialButton`) with precise logic to add scores (+1, +2, +3) and reset the match data instantly.
* **Layout Separators:** Explored spatial styling using `VerticalDivider` to maintain a visual separation between competitive data columns.


### 4. Toku App 🗾
A Japanese language learning application that helps users learn numbers, family members, and colors in Japanese with native pronunciation audio.

**What I learned from this project:**
* **Navigation Between Screens:** Implemented multi-screen navigation using `Navigator.push` and `MaterialPageRoute` to move between categories.
* **Reusable Components:** Built reusable custom widgets (`Category`, `Item`) that accept parameters, making the codebase cleaner and more maintainable.
* **Data Modeling:** Created a custom `ItemModel` class to structure data (image, Japanese text, English text, sound) and used `ListView.builder` for efficient list rendering.
* **Audio Playback:** Integrated the `audioplayers` package to play pronunciation audio files from local assets.


### 5. Flutter Tune App 🎹
A musical xylophone-style app that plays different notes when the user taps on colored bars — like a mini piano.

**What I learned from this project:**
* **Custom Data-Driven Widgets:** Built a parameterized `Item` widget that takes a `Color` and a `sound` file, then reused it for all 7 notes without duplicating code.
* **Flexible Layouts:** Used `Expanded` inside a `Column` to divide the screen equally among the colored bars regardless of screen size.
* **Touch Handling:** Implemented `GestureDetector` to capture taps anywhere on a colored bar and trigger actions.
* **Audio Package Practice:** Continued working with the `audioplayers` package for playing sound assets.