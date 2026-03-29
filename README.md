# 📰 Daily Press

**Daily Press** is a modern Flutter news application that brings you the latest **breaking news**, **trending headlines**, and **category-specific stories** from across the globe. Built using [NewsAPI](https://newsapi.org/), the app offers a smooth and beautiful user experience with responsive layouts, image caching, and webview integration.

---
![welcomeScreen](https://github.com/user-attachments/assets/89d57f53-80c3-426c-bce5-c1392cf8535a)
![generalScreen](https://github.com/user-attachments/assets/07fa8380-ade8-4d4f-85d8-6867406123b7)
![HomePage](https://github.com/user-attachments/assets/e0fb3bea-40e7-43ef-bd28-7b3f722d762f)
![homePageDown](https://github.com/user-attachments/assets/48e2e32f-aacf-4eef-bc8e-30d85f93bd91)
![BreakingNews](https://github.com/user-attachments/assets/a6425cb2-6800-4ceb-a575-91853194a9a1)
![Business](https://github.com/user-attachments/assets/60c93658-8877-4538-99b7-415bb68f8e22)
![entertainment](https://github.com/user-attachments/assets/fec22eb3-63d0-43b4-800b-adb1a7adf0f4)
![health](https://github.com/user-attachments/assets/3a6e18ad-c907-4a8e-a6d9-7a25890f3315)
![sports](https://github.com/user-attachments/assets/6d9c648a-f42b-4338-bb62-b4d350bf64bc)
![trendingNews](https://github.com/user-attachments/assets/4412137d-c399-45b7-a0b8-876d2a8ebb63)
![webview](https://github.com/user-attachments/assets/b36bd1ed-ff45-4169-bb38-3a261a996ea4)
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
