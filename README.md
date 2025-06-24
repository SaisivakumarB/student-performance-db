# 🎓 Student Performance Tracker (SQL Mini Project)
![GitHub repo size](https://img.shields.io/github/repo-size/SaisivakumarB/student-performance-db)
![GitHub last commit](https://img.shields.io/github/last-commit/SaisivakumarB/student-performance-db)
![GitHub top language](https://img.shields.io/github/languages/top/SaisivakumarB/student-performance-db)
![SQL](https://img.shields.io/badge/Database-SQL-blue.svg)

<img src="banner.png" alt="Project Banner" width="100%">

A mini database project to manage and analyze student academic performance and attendance.

## 📁 Project Structure

- `schema/` → SQL schema to create database tables
- `data/` → Sample SQL data insertions
- `queries/` → Sample SQL analysis queries

## 🚀 How to Use

1. Set up a local or cloud SQL database (PostgreSQL or MySQL).
2. Run `schema/create_tables.sql` to create tables.
3. Run `data/sample_data.sql` to insert sample records.
4. Run `queries/analysis_queries.sql` to analyze performance.

## 🔍 Features

- Track marks and attendance per course
- Analyze top-performing students
- Correlate attendance with grades

## 🐍 Python CLI Integration

This project includes a Python CLI app (`app/main.py`) that lets users:

- Create the `Students` and `Marks` tables
- Add a new student via terminal
- View all student records

### ▶️ How to Run

```bash
python app/main.py

---

🎯 Ideal for database practice and interviews.
