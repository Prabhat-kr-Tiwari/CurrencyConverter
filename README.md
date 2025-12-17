Here’s a clean, beginner-friendly **README.md** you can directly use for your **Currency Converter Flutter project**. It matches your current code and Flutter 3.19+ practices.

---

# 💱 Currency Converter (Flutter)

A simple **Flutter currency converter app** that converts **USD to INR** using a fixed conversion rate.
This project is built using **Flutter Material Design** and is ideal for beginners learning Flutter widgets, state management, and user input handling.

---

## 🚀 Features

* Convert **USD to INR**
* Clean and minimal **Material UI**
* Real-time conversion on button click
* Uses `TextField` with input validation
* Demonstrates Flutter **StatefulWidget lifecycle**
* Compatible with **Flutter 3.19+**

---

## 🛠️ Tech Stack

* **Flutter**
* **Dart**
* **Material Design**
* Widgets Layer (`WidgetStateProperty`) compliant

---

## 📱 App Preview

**UI Flow:**

1. Enter an amount in USD
2. Tap **Convert**
3. Converted amount in INR is displayed instantly

---

## 🧮 Conversion Logic

```dart
result = 81 * double.parse(usdController.text);
```

> ⚠️ The conversion rate is **hardcoded (1 USD = 81 INR)** for simplicity.

---

## 📂 Project Structure

```text
lib/
 ├── main.dart
 └── currency_converter_material_page.dart
```

---

## 🧑‍💻 Key Flutter Concepts Used

* `StatefulWidget`
* `TextEditingController`
* `setState()`
* `TextField`
* `TextButton`
* `Scaffold`, `AppBar`, `Column`
* Widget lifecycle (`initState`, `build`)

---

## ▶️ Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/Prabhat-kr-Tiwari/CurrencyConverter
```

### 2️⃣ Navigate to the project folder

```bash
cd currencyconverter
```

### 3️⃣ Install dependencies

```bash
flutter pub get
```

### 4️⃣ Run the app

```bash
flutter run
```

---

## 🧪 Sample Input

| USD |  INR |
| --: | ---: |
|   1 |   81 |
|  10 |  810 |
| 100 | 8100 |

---

## 🧱 Future Improvements

* 🌍 Real-time exchange rates using an API
* 🔄 Support for multiple currencies
* ❌ Input validation & error handling
* 🎨 Dark/Light theme toggle
* 📱 Responsive layout for tablets

---

## 📄 License

This project is open-source and available under the **MIT License**.

---

## 🙌 Acknowledgements

* [Flutter Documentation](https://docs.flutter.dev/)
* Material Design Guidelines

---


