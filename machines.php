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

    <div class="container">
        <h1>Machines</h1>
        <form action="machines.php" method="get">
    <label for="maintenanceRec">Choose a Workout Type:</label>
    <select name="maintenanceRec" id="maintenanceRec">
        <option value="">All</option>
        <option value="Cardio">Cardio</option>
        <option value="Strength">Strength</option>
        <option value="Flexibility">Flexibility</option>
        <option value="Balance">Balance</option>
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
        $maintenanceRec = $_GET['maintenanceRec'] ?? ''; // Retrieve the selected maintenance record type or default to empty
        // Construct the SQL query based on the selected maintenance record
        $sql = "SELECT * FROM equipment"; // Default SQL for all equipment
        if (!empty($maintenanceRec)) {

            $sql = "SELECT * FROM equipment WHERE Maintenance_Rec = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $maintenanceRec);
            $stmt->execute();
            $result = $stmt->get_result();
        } else {
            $result = $conn->query($sql);
        }
// Display the results in a table
if (isset($result) && $result->num_rows > 0) {
    echo "<table><tr><th>Model</th><th>Brand</th><th>Status</th><th>Workout Type</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . htmlspecialchars($row["Model"]) . "</td><td>" . htmlspecialchars($row["Brand"]) . "</td><td>" . htmlspecialchars($row["Status"]) . "</td><td>" . htmlspecialchars($row["Maintenance_Rec"]) . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No results found.";
}
$conn->close();
        ?>

    </div>
<!-- trainer rating -->
<div class="star-rating">
    <input id="star5" name="rating" type="radio" value="5" class="radio-btn hide" />
    <label for="star5" >☆</label>
    <input id="star4" name="rating" type="radio" value="4" class="radio-btn hide" />
    <label for="star4" >☆</label>
    <input id="star3" name="rating" type="radio" value="3" class="radio-btn hide" />
    <label for="star3" >☆</label>
    <input id="star2" name="rating" type="radio" value="2" class="radio-btn hide" />
    <label for="star2" >☆</label>
    <input id="star1" name="rating" type="radio" value="1" class="radio-btn hide" />
    <label for="star1" >☆</label>
    <button onclick="submitRating('trainer', 1);">Rate</button>
</div>

<script>
    function submitRating(itemType, itemId) {
    const rating = document.querySelector('input[name="rating"]:checked').value;
    fetch('submit_rating.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `type=${itemType}&id=${itemId}&rating=${rating}`
    })
    .then(response => response.json())
    .then(data => {
        alert('Rating submitted: ' + data.status);
    })
    .catch(error => console.error('Error submitting rating:', error));
}

</script>

    <footer>
        <p>Copyright © 2024 Fitness Club</p>
    </footer>
</body>
</html>
