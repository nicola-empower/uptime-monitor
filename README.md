# Empower Monitor 💎

A modern, high-performance **Uptime Monitoring Application** built with **Ruby on Rails 8**.
Designed to be lightweight, fast, and aesthetically premium with a Glassmorphism design system.

<img width="2877" height="1509" alt="image" src="https://github.com/user-attachments/assets/af2d5508-3fcc-4bc9-a691-8eee9afdce00" />

---

## ✨ Features

- **🛡️ Secure Authentication**: Built-in simple auth with `bcrypt` (No complex 3rd party deps).
- **🔒 SSL & Security**: Tracks SSL certificate expiry and alerts if < 10 days remaining.
- **⚡ Performance Tracking**: Measures and displays response time (ms) for every check.
- **📝 Content Verification**: Optional "Expected Content" check to ensure your page isn't just 200 OK but actually loading correctly.
- **📱 Mobile Optimised**: Fully responsive glassmorphism UI that looks great on Phones, Tablets, and Desktops.
- **💎 Glass UI**: Beautiful, dark-themed interface with frosted glass effects and vibrant gradients.
- **☁️ Production Ready**: Configured for Render/PostgreSQL with **Solid Output** (Solid Cache & Solid Queue).
- **✉️ Notifications**: Optional email notifications for downtime.  

## 🛠 Tech Stack

- **Framework**: Ruby on Rails 8.1
- **Language**: Ruby 3.4+
- **Database**: 
  - SQLite3 (Development)
  - PostgreSQL (Production)
- **Infrastructure**:
  - **Solid Cache**: Database-backed caching.
  - **Solid Queue**: Database-backed background jobs.
- **Frontend**: 
  - Rails ERB Views
  - Custom Vanilla CSS (Glassmorphism System)
  - Bootstrap 5 (Responsive Utilities)
  - Bootstrap Icons
- **Deployment**: Docker / Render / Heroku


## 🚀 Getting Started

### Prerequisites

- Ruby 3.4+
- Rails 8+

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/nicola-empower/uptime_monitor.git
    cd uptime_monitor
    ```

2.  **Install Dependencies**
    ```bash
    bundle install
    ```

3.  **Setup Database**
    ```bash
    rails db:setup
    ```
    *This will create the DB, migrate schema, and run seeds.*

4.  **Run the Server**
    ```bash
    rails server
    ```
    Visit `http://localhost:3000`.


## 🔮 Future Improvements

- [ ] Response time history charts using Chart.js.
- [ ] Multi-region monitoring agents.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
