# R program to create a List

# The first attributes is a numeric vector 
# containing the employee IDs which is created 
# using the command here
empId = c(1, 2, 3, 4)

# The second attribute is the employee name 
# which is created using this line of code here
# which is the character vector 
empName = c("Debi", "Sandeep", "Subham", "Shiba")

# The third attribute is the number of employees
# which is a single numeric variable.
numberOfEmp = 4

# We can combine all these three different
# data types into a list
# containing the details of employees
# which can be done using a list command
empList = list(empId, empName, numberOfEmp)

print(empList)

