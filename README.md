
# TechFix - Service-Oriented Web Application

**TechFix** is a procurement and inventory management web application built using **ASP.NET Web Forms (C#)**, designed as part of the **Service-Oriented Computing (CSE5013)** module. The system helps streamline the operations between **administrators** and **suppliers** through service-based architecture.

---

## 🧩 Key Features

### 👨‍💼 Admin Panel
- Secure login/logout
- Manage users (Add/Edit/Delete)
- Manage inventory and suppliers
- View and process orders
- Generate revenue reports

### 📦 Supplier Panel
- Login with secure credentials
- Manage product listings
- View and respond to orders (accept, reject, deliver)
- Track sales and revenue

---

## 🌐 Architecture Overview

The system compares **Monolithic** and **Service-Oriented Architecture (SOA)** approaches and adopts a modular structure enabling easy future migration to microservices.

- **Front-end:** ASP.NET Web Forms
- **Back-end:** C# (.NET Framework)
- **Database:** SQL Server
- **Web Services:** ASMX / SOA-style service communication
- **Deployment:** IIS / Docker (preferred) / Kubernetes (for scaling)

---

## 🧪 Testing

> All features were tested and validated with detailed test cases.

- 24 functional test cases covering admin and supplier workflows.
- Includes login validation, user/product CRUD operations, order management, and report generation.
- Each test confirmed expected behavior and successful outcomes.

---

## 🚀 Deployment Options

### 1. IIS (Recommended for beginners)
- Easiest setup for Windows users
- Native support for ASP.NET

### 2. Docker (Recommended for scalable deployment)
- Portability and consistency across environments
- Dockerfile and setup guide included

### 3. Kubernetes (Future scalability)
- Best for enterprise-level scale
- Adds orchestration and auto-scaling

> See documentation for deployment details.

---

## ⚙️ Setup Instructions

### Prerequisites
- Visual Studio 2019/2022 with .NET desktop development & ASP.NET workload
- SQL Server (Express or Developer)
- Git & GitHub Desktop (optional)

### Running the Project
1. Clone this repo:
   ```bash
   git clone https://github.com/sanjayahewage0103/TechFixV3.0-CSE5013
   ```
2. Open the `.sln` file in Visual Studio.
3. Set the `Login.aspx` or `AdminDashboard.aspx` as the Start Page.
4. Press F5 to run the project.
5. Import `database.sql` into your local SQL Server and update connection string in `web.config`.

### 📁 Project Structure
```
/TechFix Client
│
├── Admin/
│ └── (Admin pages like AdminDashboard.aspx, Inventory.aspx, etc.)
│
├── Content/
│ └── (CSS, images, scripts, and other static resources)
│
├── Supplier/
│ └── (Supplier pages like SupplierDashboard.aspx, Orders.aspx, etc.)
│
├── Login.aspx
├── README.md
├── web.config
└── (Other files)
TechFix Web Services/
│
└── (ASMX services like ProductService.asmx, OrderService.asmx, etc.)
```

---

## 📚 Academic Info
Course: Service-Oriented Computing (CSE5013)

Institution: ICBT Campus / Cardiff Metropolitan University
Student ID: st20282106
Prepared by: Thalpe Hewage Pethum Sanjaya Hewage

---

## 📝 License

This project is licensed under a custom license based on **CC BY-NC-ND 4.0**.

© 2025 Sanjaya Hewage (SP) | SP Solutions & Holdings

You may:
- View, use, and share the content for personal, educational, and non-commercial purposes.

You may not:
- Modify, redistribute, or use this portfolio commercially without written permission.

See the full LICENSE file (./TechFixV3.0-CSE5013_LICENSE.md) for more information.

---

## 📬 Contact

For questions or feedback, reach out via:

**Email:** pethumhewage66@gmail.com
