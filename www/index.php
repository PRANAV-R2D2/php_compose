<!DOCTYPE html>
<html>
<head>
        <title>Login Form</title>
        <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
        <h1>Login Form</h1>
        <form method="post" action="login.php">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username"><br><br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password"><br><br>
                <input type="submit" value="Login">
        </form>

        <?php
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                        // Connect to MySQL database
                        $servername = "localhost";
                        $username = "root";
                        $password = "Devops@123";
                        $dbname = "mydatabase";
                        $conn = new mysqli($servername, $username, $password, $dbname);

                        // Check connection
                        if ($conn->connect_error) {
                                die("Connection failed: " . $conn->connect_error);
                        }

                        // Get form data
                        $username = $_POST['username'];
                        $password = $_POST['password'];

                        // Check if user exists in MySQL database
                        $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
                        $result = $conn->query($sql);

                        if ($result->num_rows > 0) {
                                // Redirect to login success page
                                header('Location: login_success.php');
                        } else {
                                echo "<p>Invalid username or password!</p>";
                        }

                        // Close MySQL database connection
                        $conn->close();
                }
        ?>
</body>
</html>

