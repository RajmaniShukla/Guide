<?php
/**
 * Database Configuration for Rajasthan Tourism Guide
 * 
 * IMPORTANT: Copy this file to db.php and update with your credentials
 * Command: cp db.example.php db.php
 * 
 * NEVER commit db.php to version control!
 */

// Database credentials
$db_host = 'localhost';      // Database host
$db_user = 'your_username';  // Replace with your MySQL username
$db_pass = 'your_password';  // Replace with your MySQL password  
$db_name = 'rajasthan_tourism'; // Database name

// Create connection using MySQLi (recommended)
$connection = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

// Check connection
if (!$connection) {
    // In production, log error instead of displaying
    error_log("Database connection failed: " . mysqli_connect_error());
    die("Database connection failed. Please try again later.");
}

// Set charset to UTF-8 for proper character encoding
mysqli_set_charset($connection, "utf8mb4");

/**
 * Alternative: Using PDO (more secure, recommended for new projects)
 * 
 * try {
 *     $pdo = new PDO(
 *         "mysql:host=$db_host;dbname=$db_name;charset=utf8mb4",
 *         $db_user,
 *         $db_pass,
 *         [
 *             PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
 *             PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
 *             PDO::ATTR_EMULATE_PREPARES => false,
 *         ]
 *     );
 * } catch (PDOException $e) {
 *     error_log("Database connection failed: " . $e->getMessage());
 *     die("Database connection failed. Please try again later.");
 * }
 */
?>
