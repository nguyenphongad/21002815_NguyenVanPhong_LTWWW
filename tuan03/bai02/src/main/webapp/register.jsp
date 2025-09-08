<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        form {
            background: #fff;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
            width: 400px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 12px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .dob {
            display: flex;
            gap: 8px;
        }
        .gender {
            margin-top: 10px;
        }
        .btn {
            margin-top: 20px;
            text-align: center;
        }
        .btn input {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }
        .btn input[type=submit] {
            background: #007bff;
            color: #fff;
        }
        .btn input[type=reset] {
            background: #6c757d;
            color: #fff;
        }
        .btn input:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<form action="register" method="post">
    <h2>User Registration Form</h2>

    <label>First Name</label>
    <input type="text" name="firstName" required>

    <label>Last Name</label>
    <input type="text" name="lastName" required>

    <label>Email</label>
    <input type="email" name="email" required>

    <label>Re-enter Email</label>
    <input type="email" name="reemail" required>

    <label>Password</label>
    <input type="password" name="password" required>

    <label>Birthday</label>
    <div class="dob">
        <select name="month"><option>Jan</option><option>Feb</option></select>
        <select name="day"><option>01</option><option>02</option></select>
        <select name="year"><option>2000</option><option>2001</option></select>
    </div>

    <label>Gender</label>
    <div class="gender">
        <input type="radio" name="gender" value="Female"> Female
        <input type="radio" name="gender" value="Male"> Male
    </div>

    <div class="btn">
        <input type="submit" value="Sign Up">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>
