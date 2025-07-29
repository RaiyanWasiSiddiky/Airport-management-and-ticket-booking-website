# ✈️ Airport Management and Ticket Booking Website

## Team Member
- Raiyan Wasi Siddiky: RaiyanWasiSiddiky

---

Welcome to the **Airport Management and Ticket Booking Website** — a simple, locally hosted web application built with **HTML, CSS, PHP**, and **MySQL**.  
This project was developed as part of the **CSE370** course at **BRAC University**.

---

## ✨ Features

- ✈️ Flight ticket booking system  
- 👥 Passenger and airport management  
- 🎨 Clean UI built with HTML and CSS  
- 💾 MySQL-based backend data storage  
- ⚙️ Modular PHP backend with reusable components  

---

## 🛠️ Tech Stack

- **Frontend:** HTML, CSS  
- **Backend:** PHP  
- **Database:** MySQL (via XAMPP)  
- **Local Server:** Apache (via XAMPP)  

---

## 🚀 Local Setup Instructions (XAMPP)

Follow these steps to run the project on your local machine:

1. **Install XAMPP**  
   Download and install from [https://www.apachefriends.org/](https://www.apachefriends.org/).

2. **Start Apache and MySQL**  
   Open the XAMPP Control Panel and click **Start** for both Apache and MySQL.

3. **Place the Project**  
   Copy or clone this repository into your XAMPP `htdocs` folder such that your directory looks similar to this:  
C:\xampp\htdocs\airport-project\

4. **Import the Database**  

- Open [http://localhost/phpmyadmin](http://localhost/phpmyadmin)  
- Click **Import**  
- Select the SQL file at `sql/airport.sql`  
- Click **Go** to create the `airport` database and tables

5. **Configure Database Connection**  

Ensure `dbconnect.php` contains the following credentials:  

```php
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "airport";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
```

Default XAMPP MySQL username is root with no password.

---;

6. **Run the Project**

Open your browser and navigate to:

http://localhost/airport-project/

---

📚 Credits
Developed by Raiyan Wasi Siddiky
For CSE370 – BRAC University

---

📝 License
This project is licensed under the MIT License — see the included LICENSE file for details.

Thank you for visiting! ✨