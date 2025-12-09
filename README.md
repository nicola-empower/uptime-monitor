# Empower Monitor 

A modern, high-performance **Uptime Monitoring Application** built with **Ruby on Rails 8**.
Designed to be lightweight, fast, and aesthetically premium with a Glassmorphism design system.

<img width="2877" height="1509" alt="image" src="https://github.com/user-attachments/assets/af2d5508-3fcc-4bc9-a691-8eee9afdce00" />

---

## ✨ Features

- **Real-time Monitoring**: Automatically checks site status (HTTP 200/30x) upon saving.
- **Glassmorphism UI**: Beautiful, dark-themed interface with frosted glass effects and vibrant gradients.
- **Responsive Design**: Fully responsive layout optimized for desktop and mobile.
- **Background Jobs**: (Future proof) Ready for asynchronous monitoring tasks.
- **Production Ready**: Configured for deployment (Docker/Render) with PostgreSQL support.

## 🛠 Tech Stack

- **Framework**: Ruby on Rails 8.1
- **Language**: Ruby 3.4+
- **Database**: SQLite3 (Dev) / PostgreSQL (Prod)
- **Frontend**: 
  - Standard Rails Views (ERB)
  - Custom Vanilla CSS (Glassmorphism System)
  - Bootstrap 5 (Grid & Utilities)
  - Bootstrap Icons
- **Deployment**: Docker / Render / Heroku

## 📸 Screenshots

*(Add your screenshots here)*

## 🚀 Getting Started

### Prerequisites

- Ruby 3.4+
- Rails 8+
- SQLite3

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
    rails db:create db:migrate
    ```

4.  **Run the Server**
    ```bash
    rails server
    ```
    Visit `http://localhost:3000` in your browser.

## 🔮 Future Improvements

- [ ] Background job scheduler (Sidekiq/SolidQueue) for periodic checking.
- [ ] Email notifications for downtime.
- [ ] Response time history charts.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
