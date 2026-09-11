# 🎓 Campuz — Smart Campus Companion

> **Your entire campus in one app.**

## 🌟 About Campuz

**Campuz** is a modern mobile campus application built with **Flutter and Supabase**, bringing essential student services, academic information, campus announcements, and student management features into one unified platform.

Campuz is designed to simplify everyday college activities by giving students a single place to access their **class schedule, campus feed, leave management, profile, placement information, classroom updates, and other campus services**.

---

## ✨ Key Features

| Feature                        | Description                                                        |
| ------------------------------ | ------------------------------------------------------------------ |
| 🔐 **College Email OTP Login** | Secure login using college email and 6-digit OTP verification      |
| 🏠 **Smart Home Dashboard**    | Personalized dashboard with important academic information         |
| 📅 **Class Schedule**          | View daily classes, subjects, and timetable information            |
| 📢 **Campus Feed**             | Access announcements, notices, posts, and urgent updates           |
| 📝 **Leave Management**        | Apply for leave and track pending or approved requests             |
| 👤 **Student Profile**         | Manage personal, academic, attendance, fees, and leave information |
| 🎯 **Placement**               | Access placement-related information and opportunities             |
| 🏫 **Classroom**               | View classroom schedules and academic announcements                |
| 👥 **Clubs**                   | Explore campus clubs and student activities                        |
| 📱 **Modern UI**               | Clean, responsive, and student-friendly mobile interface           |

---

## 🔄 How Campuz Works

```text
┌────────────────────┐
│   College Email    │
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│    6-Digit OTP     │
│  Email Verification│
└─────────┬──────────┘
          │
          ▼
┌────────────────────┐
│    Campuz Home     │
│  Student Dashboard │
└─────────┬──────────┘
          │
     ┌────┴─────┐
     ▼          ▼
┌──────────┐ ┌────────────┐
│ Schedule │ │ Campus Feed│
└──────────┘ └────────────┘
     │
     ▼
┌────────────────────┐
│  Student Services  │
│ Leave • Profile    │
│ Placement • Clubs  │
└────────────────────┘
```

Campuz uses **Supabase Authentication** to securely verify students through their college email. After successful OTP verification, the student is automatically taken to the Campuz Home dashboard.

---

## 🛠️ Tech Stack

### Frontend

* **Flutter** — Cross-platform mobile application framework
* **Dart** — Programming language
* **Material Design** — UI components and interactions

### Backend & Database

* **Supabase** — Backend services and authentication
* **PostgreSQL** — Database
* **Supabase Auth** — Email OTP authentication

### Development

* **Git** — Version control
* **GitHub** — Source code hosting
* **Android Studio** — Android development and testing

---

## 📁 Project Structure

```text
Campuz/
│
├── android/
├── ios/
├── assets/
│
├── lib/
│   ├── features/
│   │   ├── auth/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   │
│   │   ├── home/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   │
│   │   ├── schedule/
│   │   ├── classroom/
│   │   ├── campus_feed/
│   │   ├── leave/
│   │   ├── profile/
│   │   ├── placement/
│   │   └── clubs/
│   │
│   ├── shared/
│   │   ├── widgets/
│   │   └── theme/
│   │
│   └── main.dart
│
├── test/
├── pubspec.yaml
├── README.md
└── .gitignore
```

---

## 📱 Main Screens

### 🔐 Authentication

* Splash Screen
* College Email Login
* OTP Verification
* Persistent Authentication Session

### 🏠 Home

* Personalized greeting
* Attendance overview
* Upcoming classes
* Important campus information
* Quick navigation

### 📅 Schedule

* Daily timetable
* Date selection
* Subject information
* Class timings

### 📢 Campus Feed

* Announcements
* Notice Board
* General Posts
* Urgent Updates
* Post reactions
* Document attachments

### 📝 Leave Management

* Leave requests
* Apply for leave
* Medical leave
* Personal leave
* Request status
* Leave history

### 👤 Profile

* Personal Details
* Academic Details
* Attendance
* Fees
* Leave Requests
* Settings
* Help & Support

---

## 🎯 Use Cases

* **Students** — Access everyday campus information from one application
* **Academic Management** — View schedules and classroom information
* **Campus Communication** — Receive important announcements and notices
* **Leave Management** — Submit and track leave requests digitally
* **Placement Preparation** — Access placement-related information
* **Student Activities** — Discover clubs and campus activities

---

## 🧠 What I Learned Building This

* Building a complete mobile application using **Flutter**
* Designing reusable and scalable Flutter widgets
* Implementing **Supabase Authentication**
* Building **email OTP authentication**
* Working with **PostgreSQL databases**
* Managing persistent authentication sessions
* Designing modern mobile-first UI
* Structuring a Flutter application using feature-based architecture
* Connecting frontend applications with backend services
* Managing application versions and release builds
* Using **Git and GitHub** for project development

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

* Flutter SDK
* Dart SDK
* Android Studio
* Git
* A Supabase project

Check your Flutter installation:

```bash
flutter doctor
```

### Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/Campuz.git
```

Navigate to the project:

```bash
cd Campuz
```

Install dependencies:

```bash
flutter pub get
```

### Configure Supabase

Create a Supabase project and configure the required authentication and database settings.

Enable **Email Authentication**.

Configure the email authentication template to send a 6-digit OTP using:

```text
{{ .Token }}
```

Then configure your Flutter application with your Supabase project URL and anon key.

### Run the Application

Connect an Android device or start an emulator:

```bash
flutter run
```

---

## 🔐 Security

Campuz uses **Supabase Authentication** for secure student login.

Sensitive credentials and secret keys should **never be committed to GitHub**.

Before production deployment:

* Configure Supabase Row Level Security
* Protect database access
* Secure authentication settings
* Validate authenticated users
* Protect sensitive student information
* Use production-ready environment configuration

---

## 🔮 Future Enhancements

Campuz will continue to evolve with additional features designed to make the digital campus experience more useful and connected.

### 📊 Academic Improvements

* Real-time attendance tracking
* Complete academic database integration
* Academic performance analytics
* Internal marks and results
* Automatic timetable synchronization

### 🔔 Communication

* Push notifications
* Important announcement alerts
* Personalized campus notifications
* Improved campus communication

### 🎯 Career & Placement

* Placement opportunities
* Company information
* Placement eligibility tracking
* Interview and recruitment updates
* Placement preparation resources

### 🏫 Campus Services

* Digital campus navigation
* Classroom and building information
* Club management
* Student activities
* Campus event management

### 🤖 Smart Features

* AI-powered student assistant
* Smart schedule recommendations
* Personalized academic insights
* Intelligent campus search

### ☁️ Platform Improvements

* Production backend deployment
* Improved performance and scalability
* Offline support
* Multi-device synchronization
* iOS production release

---

## 👨‍💻 Developer

**Pavankalyan Madiga**

Campuz is a student-focused campus application developed to simplify everyday college activities, academic information, campus communication, and student services.

---

## 📄 License

This project is personal work by **Pavankalyan Madiga** and is currently intended for educational and development purposes.

All rights reserved. You may not copy, distribute, modify, or use this project without explicit permission from the author.

---

## 🙌 Acknowledgements

* [Flutter](https://flutter.dev/) for the cross-platform framework
* [Supabase](https://supabase.com/) for authentication and backend services
* [PostgreSQL](https://www.postgresql.org/) for database technology
* [GitHub](https://github.com/) for version control and project hosting

---

## 📬 Contact

**Pavankalyan Madiga**

[GitHub](https://github.com/YOUR_USERNAME) • [Campuz Repository](https://github.com/YOUR_USERNAME/Campuz)

---

<p align="center">Made with ❤️ for students, by a student</p>
