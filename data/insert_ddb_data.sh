#!/bin/bash

# Insert course_status data into DynamoDB table using PartiQL statements
aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '101', 'capacity': 30, 'current_students': 25, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '102', 'capacity': 25, 'current_students': 25, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '103', 'capacity': 40, 'current_students': 15, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '104', 'capacity': 35, 'current_students': 30, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '105', 'capacity': 30, 'current_students': 20, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '106', 'capacity': 35, 'current_students': 28, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '107', 'capacity': 30, 'current_students': 30, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '108', 'capacity': 40, 'current_students': 35, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '109', 'capacity': 25, 'current_students': 25, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '110', 'capacity': 45, 'current_students': 40, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '111', 'capacity': 30, 'current_students': 22, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '112', 'capacity': 35, 'current_students': 35, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '113', 'capacity': 40, 'current_students': 38, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '114', 'capacity': 30, 'current_students': 30, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '115', 'capacity': 45, 'current_students': 42, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '116', 'capacity': 35, 'current_students': 25, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '117', 'capacity': 30, 'current_students': 30, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '118', 'capacity': 40, 'current_students': 32, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '119', 'capacity': 25, 'current_students': 20, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '120', 'capacity': 45, 'current_students': 45, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '121', 'capacity': 30, 'current_students': 28, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '122', 'capacity': 35, 'current_students': 35, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '123', 'capacity': 40, 'current_students': 36, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '124', 'capacity': 30, 'current_students': 25, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '125', 'capacity': 45, 'current_students': 45, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '126', 'capacity': 35, 'current_students': 30, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '127', 'capacity': 30, 'current_students': 28, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '128', 'capacity': 40, 'current_students': 40, 'status': 'FULL'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '129', 'capacity': 25, 'current_students': 20, 'status': 'OPEN'}"

aws dynamodb execute-statement --statement "INSERT INTO \"course_status\" VALUE {'class_code': '130', 'capacity': 45, 'current_students': 40, 'status': 'OPEN'}"