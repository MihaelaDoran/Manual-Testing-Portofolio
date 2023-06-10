# Manual Testing Portofolio    
      
## Introduction 
      
The purpose of this Final Project is to put into practice all the information that I have acquired from the ITFactory Manual Testing course.  <br>   
The application that I have performed my majority of tests is [OrangeHRM](https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index) with 
the "User Management" and "Job" sections. The requirements for this application can be found [here](https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf) and the tools that I have used for managing project and creating test cases are Jira Software and Zephyr  Squad. <br>  
For Rest API testing of [Simple Books](https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md) I have used Postman. <br>  
For creating and updating a database with its tables I have used MySQL Workbench tool. <br>  
This project will be divided into 3 sections: [Testing Section](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/README.md#Testing-Section), [API Section](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/README.md#API-Section) and [SQL Section](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/README.md#SQL-Section). <br>  
## 1 Testing Section <br> 
### 1.1 Test Planning <br> 
The Test Plan is designed to describe all details of testing for the Admin Modul of the OrangeHRM application. <br> 
The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan. <br> 
#### 1.1.1 Roles assigned to the project and persons allocated <br> 
- Project manager - Grigore Manda
- Product owner - Marius Negrescu
- Software developer - Georgiana Dobre
- QA Engineer - Mihaela Doran <br> 
#### 1.1.2 Entry criteria defined <br> 
- functional specifications are defined
- roles needed for the project are allocated
- initial project risks were detected and mitigated
- test environment has been set-up and all other necessary resources such as tools and devices are available
- test cases are developed and ready <br> 
#### 1.1.3 Exit criteria defined <br> 
- all tests have been executed
- all the identified defects are corrected and closed
- deadline was reached
- no high priority or severity or critical bug has been left out
- all resolved bugs have been re-tested and approved by the QA team
- desired and sufficient coverage of the requirements and functionalities under the test
- exploratory regression testing must be performed on the Admin module, which includes the "User Management" and "Job" sections <br> 
#### 1.1.4 Test scope <br> 
- **Tests in scope:** All the feature of Admin module which were defined in software requirement specs need to be tested: functional testing, GUI testing
- **Tests not in scope:** performance testing, integration testing, compatibility testing with multiple browsers <br> 
#### 1.1.5 Risks detected <br> 
**Project risks:** 
- lack of experience of the QA team
- lack of clarity in requirements
- short deadline of Zephyr Squad trial
- unavailability of test environment <br> 

**Product risks:**
- validation constraints on the fields might be too restrictive to the end-user
- application doesn't perform some functions as per specifications
- application does not function as per user expectations <br> 

#### 1.1.6 Evaluating entry criteria
The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. <br> 
### 1.2 Test Monitoring and Control <br> 
Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. 
The following status report was generated after 100% of the test cases were executed, on 27 of March 2023: <br> 

![Test Execution Report1](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/assets/131185471/21318909-6138-4f2c-b150-6700c40bfd2e) <br> 
### 1.3 Test Analysis <br> 
The testing process will be executed based on the above requirements for the Admin module. 
The following test conditions for the User Management section were found: 
- enter data only for mandatory fields and check that the user is added/edited
- leave mandatory fields empty and check that the user cannot be added/edited
- enter data for all available fields and check that you can search for a user
- view all users in a list
- verify if you can delete one or more users
- check all validation constraints for the fields <br> 

The following test conditions were found for the Job section (Job Titles, Pay grades, Employment Status, Job Categories, Work Shifts):
- enter data only for mandatory fields and check that the entry for Job (Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts) is added/edited
- leave mandatory fields empty and check that the entry for Job (Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts) cannot be added/edited
- enter data for all available fields and check that you can search for an entry in the Job section (Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts)
- view all entries for Job section (Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts) in a list
- verify if you can delete one or more entries from Job (Job Titles/ Pay grades/ Employment Status/ Job Categories/ Work Shifts)
- check all validation constraints for the field <br> 

### 1.4 Test Design <br> 
Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing. <br> 

![Test cases printscreen](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/assets/131185471/2eaf3cc0-66da-4f2e-9067-a54f55695638) <br> 
The test cases report with all the steps can be viewed [here](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/Final%20Project/Jira%20and%20Zephyr%20Reports/Test%20Cases%20Report.xlsx). <br> 
### 1.5 Test Implementation <br> 
The following elements are needed to be ready before the test execution phase begins:
- testing environment is up and running: [OrangeHRM](https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers)
- access to the testing environment is given: **Username : Admin | Password : admin123**
- cycle summary was created
- all test cases were added to the cycle summary <br> 

### 1.6 Test Execution <br> 
- test cases are executed on the created test Cycle summary
- bugs have been created based on the failed tests. The complete bug reports can be found [here](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/Final%20Project/Jira%20and%20Zephyr%20Reports/Bug%20Reports.pdf). <br> 
- full regression testing is needed after the bugs are fixed <br> 

### 1.7 Test Completion <br> 
- the exit criteria were met and satisfied
- the traceability matrix was generated and can be found [here](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/Final%20Project/Jira%20and%20Zephyr%20Reports/Traceability_Matrix.xlsx) 
- test execution chart was generated, the final report shows that a number 12 tests have failed out of a total of 42
- a number of 42 test cases were planned for execution and all of them were executed <br> 

## 2 API Section <br> 
API tests were executed in Postman. The collection can be found [here](https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md) and the JSON file with the collection of requests can be found [here](https://github.com/MihaelaDoran/Manual-Testing-Portofolio/blob/main/Final%20Project/Simple%20Books.postman_collection.json). <br> 




