**University School Management System Model**

A University School Management System (USMS) is designed to manage, streamline, and automate the various academic and administrative processes in a university. Below is a detailed model outlining the key components and functionalities of such a system.

1. ***User Management***

**Properties:**

userID: Unique identifier for the user.

username: Username for login.

password:

email: User’s email address.

phoneNumber: User’s phone number.

dateCreated: Date the user account was created.

dateCreated: Date the user account was updated.

**Functionalities**

Authentication: User registration, login.

Profile Management: View and edit personal information, change password


2. ***Academic Management***

**Properties:**

*Course*

courseID: Unique identifier for the course.

courseName: Name of the course.

courseCode: Unique course code.

credits: Number of credits for the course.

description: Brief description of the course.

instructorID: ID of the assigned instructor.

schedule: Time and date when the course is held.

*Class Schedule*

scheduleID: Unique identifier for the schedule.

courseID: ID of the course.

dayOfWeek: Day(s) when the class is held.

startTime: Start time of the class.

endTime: End time of the class.

location: Classroom or lab location

*Grade*

gradeID: Unique identifier for the grade.

studentID: ID of the student.

courseID: ID of the course.

grade: Letter grade or percentage.

dateRecorded: Date when the grade was recorded.



**Functionalities**

Course: Create, Update, delete courses, assign instructors

Instructor: Create, Update, delete instructors, add courses to the instructor list

Class Scheduling: Automated and manual scheduling of classes, lecture halls, and labs.

Grading System: Record and manage grades, grade calculation, and transcript generation.


3. ***Student Management***

**Properties:**

*Student*

studentID: Unique identifier for the student.

name: Full name of the student.

dateOfBirth: Date of birth.

gender: Gender of the student.

address: Residential address.

email: Student’s email address.

phoneNumber: Student’s phone number.

enrollmentDate: Date of enrollment.

programID: ID of the enrolled program.

graduationDate: Expected or actual graduation date.

*Program Of Study*

programOfStudyId: Unique identifier for the program.

name: name of program.

field: field of the program(arts or science).

years: years of given program.

**Functionalities**

Student: Create, Update, remove students
ProgramOfStudy: Create, Update, remove program


4. ***Faculty Management***

**Properties:**

*Faculty*

facultyID: Unique identifier for the faculty member.

name: Full name of the faculty member.

qualification: Academic qualifications.

email: Faculty’s email address.

phoneNumber: Faculty’s phone number.

departmentID: ID of the department.

hireDate: Date of hire.

position: Position (e.g., Professor, Lecturer).

researchInterests: Areas of research interests.


**Functionalities**

Faculty: Create, Update, remove faculties