# Practice solution script for Problem1; see the embedded assignment notes.
: '
EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender, of all the employees working in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.

The employee ID is of the format: DepartmentYearOfBirthCode Where:
- Department is the department to which the employee belongs to (Department A to G)
- YearOfBirth is the birth year of the employee (Eg. 2000)>
- Code is a three digit number unique to each employee.

For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The email ID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.
Write an awk script that that takes the file EmployeeDetails.csv as input and prints the email ids of all the female employees of the company in the same sequence as the employee details appear in the file EmployeeDetails.csv
'

# Documentation:
# Purpose: Extract female employees from `EmployeeDetails.csv` and print their email IDs.
# Inputs: A CSV file `EmployeeDetails.csv` in the current directory with fields:
#   1) Employee ID, 2) Name, 3) Leaves, 4) Gender.
# Output: One email per matching employee, in the same order as the CSV.
# How it works:
# - Writes a small awk program to `yourScript.awk`.
# - awk sets the field separator to comma.
# - For each record, it checks if column 4 contains "Female".
# - If so, it prints `<EmployeeID>@xyz.com` using column 1.
# Notes: The actual solution is inside `script()` for easy reuse/grading.
#Solution:
script(){ echo '
BEGIN{  
	FS = ","
} 

{
	EID = $1
	Gender= $4
	if (Gender ~ /Female/) {
		print EID"@xyz.com"
        }
}
' >yourScript.awk
awk -f yourScript.awk EmployeeDetails.csv
}
