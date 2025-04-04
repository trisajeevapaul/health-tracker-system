### **health-tracker-system**

*A MySQL-based Health Tracker System for logging user vitals, moods, activities, and workouts.*

## **📌 Overview**

The **Health Tracker System** is a database designed to help users log their vitals, mood, track their activities, and analyze well-being trends. It includes tables for users, vitals, mood scores, workout logs, and recommended activities.

## **📁 Repository Contents**

- `HealthTrackerSystem-ERD.png` – The Entity-Relationship Diagram.
- `health_tracker_schema.sql` – SQL script for creating tables and inserting sample data. It has script for creating stored procedures and examples as well. 
- `Health Tracker System overview report.docx` – Detailed documentation on the database structure.
- `README.md` – Project overview and setup instructions.

## **🛠 Features**

✔ User vitals & mood tracking with timestamps  
✔ Mood-based activity recommendations  
✔ Stored procedures for stress analysis and reporting  
✔ Identifies inactive users who haven't logged workouts  

## **📦 Database Schema**

The database consists of four main tables:

- **Users** (`User_id`, `Name`, `Age`, `Mail_ID`, `Password`)
- **Heartbeat tracker** (`Entry_id`, `user_id`, `user_Score`, `BloodPressure`, `HeartRate`)
- **Mood Score** (`id`, `score`, `level`)
- **User Mood Logs** (`id`, `User_id`, `User_score`, `Log_date`, `Work_out_date`)
- **Activity** (`id`, `Mood_score`, `Activity_type`)

## **🚀 Setup Instructions**

### **Step 1: Clone the Repository**

```bash
git clone https://github.com/your-username/health-tracker-system.git
cd health-tracker-system
```

### **Step 2: Import the Database**

1. Open **MySQL Workbench** or **Command Line**.
2. Create the database:
   ```sql
   CREATE DATABASE health_tracker_system;
   USE health_tracker_system;
   ```
3. Import the schema:
   ```bash
   mysql -u root -p health_tracker_system < health_tracker_schema.sql
   ```
4. Import stored procedures:
   ```bash
   mysql -u root -p health_tracker_system < stored_procedures.sql
   ```

## **📊 Usage Examples**

### **Check Inactive Users**

```sql
CALL GetInactiveUsers();
```

### **Add New Mood Scores**

```sql
CALL Add_mood_score(2.5);
```

### **Check Users with the Same Mood**

```sql
CALL users_with_same_mood(5);
```

## **📝 License**

This project is open-source under the **MIT License**.
