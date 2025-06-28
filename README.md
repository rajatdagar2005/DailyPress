# 📰 Daily Press

**Daily Press** is a modern Flutter news application that brings you the latest **breaking news**, **trending headlines**, and **category-specific stories** from across the globe. Built using [NewsAPI](https://newsapi.org/), the app offers a smooth and beautiful user experience with responsive layouts, image caching, and webview integration.

---

## 📱 Screenshots

| Landing Page | Home | Categories | Article View |
|--------------|------|------------|---------------|
| ![Landing](images/screens/landing.png) | ![Home](images/screens/home.png) | ![Categories](images/screens/categories.png) | ![Article](images/screens/article.png) |

> *(Replace the screenshot paths above with your actual images in `images/screens/` folder.)*

---

## ✨ Features

- 🚀 Beautiful landing page to welcome users.
- 📰 Breaking news and trending news carousels.
- 📚 Browse news by category (Business, Health, Sports, etc.)
- 📄 Read full articles within the app using **WebView**.
- 📷 Image caching with `cached_network_image`.
- 📡 API data fetched from **NewsAPI.org**.
- 🔄 Seamless navigation between screens.
- 📱 Responsive layout for all devices.

---

## 🛠️ Built With

- [Flutter](https://flutter.dev/) – Cross-platform UI toolkit
- [Dart](https://dart.dev/) – Language used for Flutter
- [NewsAPI](https://newsapi.org/) – For fetching real-time news data
- [CachedNetworkImage](https://pub.dev/packages/cached_network_image) – For image caching
- [WebView](https://pub.dev/packages/webview_flutter) – For in-app article viewing
- [CarouselSlider](https://pub.dev/packages/carousel_slider) – For breaking news slider
- [SmoothPageIndicator](https://pub.dev/packages/smooth_page_indicator) – For carousel indicators

---

## 📂 Folder Structure

dailypress/
├── lib/
│ ├── model/ # Data models (articles, slider, categories)
│ ├── pages/ # UI pages (Home, Landing, ArticleView, etc.)
│ ├── services/ # API services for fetching news and categories
│ └── main.dart # Main app entry point
├── images/ # Image assets (categories, landing page)
├── pubspec.yaml # Project dependencies and assets


---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed – [Flutter Setup](https://docs.flutter.dev/get-started/install)
- A valid API key from [NewsAPI.org](https://newsapi.org/)

### Steps to Run

1. Clone the repo:

   ```bash
   git clone https://github.com/yourusername/dailypress.git
   cd dailypress
