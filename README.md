# 🌤️ Weather App (Day 1 / 10)

Welcome to **Day 1** of my **10 Days, 10 Apps Challenge**! 🚀

This is a clean, minimal Weather App built with Flutter. It automatically detects your current city and displays the real-time temperature and weather conditions.

## 🌟 Features
- **Auto-Location**: Uses `geolocator` and `geocoding` to find your current city automatically.
- **Real-Time Data**: Fetches live weather information from the [OpenWeatherMap API](https://openweathermap.org/).
- **Dynamic Icons**: Instead of heavy animations, it dynamically loads the official, pixel-perfect weather condition icons straight from OpenWeatherMap.

## 💡 Inspiration & "The Twist"
This app was heavily inspired by the fantastic [Minimal Weather App tutorial by Mitch Koko](https://www.youtube.com/watch?v=yLtpMqvMgdY&list=PLlvRDpXh1Se68K3r2NUU5sGhyRPDPBPSQ).

**My Own Twist:** While the original tutorial relies on downloaded Lottie animations for the weather states, I opted for a more lightweight, dynamic approach. This app directly parses the `icon` code returned by the API and renders the official 2D OpenWeatherMap icons across the network!

## 🛠️ Built With
- **Flutter & Dart**
- **http** (for API requests)
- **geolocator** & **geocoding** (for location services)
- **OpenWeatherMap API**

---
*Stay tuned for Day 2!* 💻✨
