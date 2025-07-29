# ✈️ Airport Management and Ticket Booking Website

A simple website for managing airports and booking tickets, built using **HTML, CSS, PHP**, and **MySQL**, and locally hosted via **XAMPP**.  
Developed as part of the **CSE370** course at **BRAC University**.

---

## 🗂️ Project Structure

project-root/
├── css/ # Stylesheets
├── images/ # Image assets
├── sql/
│ └── airport.sql # MySQL database schema
├── dbconnect.php # Database connection file
├── index.php # Homepage
├── ... # Other PHP pages

---

## 🚀 Local Setup Instructions (XAMPP)

### 1. Install XAMPP

- Download from: [https://www.apachefriends.org/](https://www.apachefriends.org/)
- Install and open the **XAMPP Control Panel**

### 2. Start Apache & MySQL

- Launch the XAMPP Control Panel
- Click **Start** for both **Apache** and **MySQL**

### 3. Place the Project in `htdocs` folder in your xaamp folder wherever you installed

- Copy or clone this repository into your `htdocs` folder:
C:\xampp\htdocs\project\


### 4. Import the Database

- Go to [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
- Click on **Import**
- Choose the file:
sql/airport.sql

- Click **Go**

This will create a MySQL database named `airport` with all required tables.

5. Run the Project
Open your browser and go to:
👉 http://localhost/project/

You should now see the homepage and be able to use the system.

✅ Features
Flight ticket booking

Passenger management

Simple UI with HTML/CSS

MySQL-based data storage

Modular PHP backend

📚 Credits
Developed by Raiyan Wasi
For CSE370 – BRAC University

📝 License
This project is for educational purposes only. No license applied.