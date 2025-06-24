# app/main.py

import sqlite3

def create_connection():
    return sqlite3.connect("student_db.sqlite")

def create_tables():
    conn = create_connection()
    cur = conn.cursor()
    
    cur.execute('''CREATE TABLE IF NOT EXISTS Students (
        student_id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        email TEXT,
        dob TEXT,
        gender TEXT
    )''')

    cur.execute('''CREATE TABLE IF NOT EXISTS Marks (
        mark_id INTEGER PRIMARY KEY AUTOINCREMENT,
        student_id INTEGER,
        midterm INTEGER,
        final INTEGER,
        total INTEGER,
        FOREIGN KEY (student_id) REFERENCES Students(student_id)
    )''')

    conn.commit()
    conn.close()

def insert_student(name, email, dob, gender):
    conn = create_connection()
    cur = conn.cursor()
    cur.execute("INSERT INTO Students (name, email, dob, gender) VALUES (?, ?, ?, ?)", (name, email, dob, gender))
    conn.commit()
    conn.close()

def show_students():
    conn = create_connection()
    cur = conn.cursor()
    cur.execute("SELECT * FROM Students")
    for row in cur.fetchall():
        print(row)
    conn.close()

def main():
    create_tables()
    print("1. Add student")
    print("2. Show students")
    choice = input("Enter choice: ")
    
    if choice == "1":
        name = input("Name: ")
        email = input("Email: ")
        dob = input("DOB (YYYY-MM-DD): ")
        gender = input("Gender: ")
        insert_student(name, email, dob, gender)
        print("Student added.")
    elif choice == "2":
        show_students()
    else:
        print("Invalid choice.")

if __name__ == "__main__":
    main()
