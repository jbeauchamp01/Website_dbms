<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Machines - Fitness Club</title>
    <link rel="stylesheet" href="machine_styles.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="food.php">Food</a></li>
                <li><a href="trainer.php">Trainer</a></li>
                <li><a href="machines.php">Machines</a></li>
            </ul>
        </nav>
    </header>



     <!-- I used this to make like a primitive ass dropdown for our dietary needs(you can edit it whenever you hop on) -->
    <div class="container">
        <h1>Food</h1>
        <form action="food.php" method="get">
            <label for="category">Choose a category:</label>
            <select name="category" id="category">
                <option value="all">All</option>
                <option value="Low-Carb">Low-Carb</option>
                <option value="Vegetarian">Vegetarian</option>
                <option value="High-Protein">High-Protein</option>
                <option value="Keto">Keto</option>
                <option value="Gluten-Free">Gluten-Free</option>
            </select>
            <button type="submit">Filter</button>
        </form>
        <!-- PHP GOES HERE FOR THE MACHINES -->
        <?php
        $servername = "localhost"; 
        $username = "root"; 
        $password = "Milenio2024+"; 
        $database = "fitness_app"; 
        $conn = new mysqli($servername, $username, $password, $database);
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        }
        echo "Connected successfully";

        $sql = "SELECT * FROM food_bar";
        $result = $conn->query($sql);
        $category = $_GET['category'] ?? 'all'; 

        $category = $_GET['category'] ?? 'all';
        $sql = "SELECT * FROM food_bar"; 
        if ($category != 'all') {
            $sql = "SELECT * FROM food_bar WHERE Special_Diet = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $category);
            $stmt->execute();
            $result = $stmt->get_result();
        } else {
            $result = $conn->query($sql);
        }
        if (isset($result) && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "Name: " . $row["Food_Name"] . " - Special Diet: " . $row["Special_Diet"] ." - Description: " . $row["Description"] . " - Price: $" . $row["Price"] . "<br>";
            }
        } else {
            echo "No results found.";
        }
        $conn->close();
        ?>
        <!-- PHP ENDS HERE!!!! -->
    </div>


    <footer>
        <p>Copyright © 2024 Fitness Club</p>
    </footer>
</body>
</html>
