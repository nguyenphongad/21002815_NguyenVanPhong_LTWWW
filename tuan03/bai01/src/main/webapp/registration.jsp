<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type=radio], input[type=checkbox] {
            width: auto;
            margin-right: 5px;
        }
        .btn {
            margin-top: 15px;
            display: flex;
            justify-content: space-between;
        }
        .btn input {
            width: 48%;
            background: #007bff;
            border: none;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            padding: 10px;
        }
        .btn input[type=reset] {
            background: #6c757d;
        }
        .btn input:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<form action="registration-form" method="GET">
    <h2>Student Registration</h2>
    <label>First Name</label>
    <input type="text" name="txtFName" />

    <label>Last Name</label>
    <input type="text" name="txtLName" />

    <label>Date of Birth</label>
    <select name="day"><option>01</option><option>02</option></select>
    <select name="month"><option>Jan</option><option>Feb</option></select>
    <select name="year"><option>2000</option><option>2001</option></select>

    <label>Email</label>
    <input type="text" name="txtEmail" />

    <label>Mobile Number</label>
    <input type="text" name="txtMobileNumber" />

    <label>Gender</label>
    <input type="radio" name="gender" value="Male"/> Male
    <input type="radio" name="gender" value="Female"/> Female

    <label>Address</label>
    <textarea name="txtAddress"></textarea>

    <label>City</label>
    <input type="text" name="txtCity" />

    <label>Pin code</label>
    <input type="text" name="txtPinCode" />

    <label>State</label>
    <input type="text" name="txtState" />

    <label>Country</label>
    <input type="text" name="txtCountry" value="India"/>

    <label>Hobbies</label>
    <input type="checkbox" name="chkHobbies" value="Drawing"/> Drawing
    <input type="checkbox" name="chkHobbies" value="Singing"/> Singing
    <input type="checkbox" name="chkHobbies" value="Dancing"/> Dancing

    <label>Course applies for</label>
    <input type="radio" name="txtCourse" value="BCA"/> BCA
    <input type="radio" name="txtCourse" value="B.Com"/> B.Com
    <input type="radio" name="txtCourse" value="B.Sc"/> B.Sc
    <input type="radio" name="txtCourse" value="B.A"/> B.A

    <div class="btn">
        <input type="submit" value="Submit"/>
        <input type="reset" value="Reset"/>
    </div>
</form>
</body>
</html>
