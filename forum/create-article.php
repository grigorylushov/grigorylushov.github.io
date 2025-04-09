<?php
// Connect to the database
$host = "b97824gy.beget.tech";
$username = "b97824gy_forum";
$password = "Forum123";
$dbname = "b97824gy_forum";

$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
  die("Коннекция упала: " . mysqli_connect_error());
}

// Load the list of bad words
$bad_words_en = file('bad_words_en.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
$bad_words_ru = file('bad_words_ru.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

// Handle the POST request
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $title = mysqli_real_escape_string($conn, $_POST['title']);
  $content = mysqli_real_escape_string($conn, $_POST['content']);

  // Check for bad words in the title and content
  $title_is_clean = true;
  foreach ($bad_words_en as $word) {
    if (stripos($title, $word) !== false) {
      $title_is_clean = false;
      break;
    }
  }
  foreach ($bad_words_ru as $word) {
    if (stripos($title, $word) !== false) {
      $title_is_clean = false;
      break;
    }
  }
  $content_is_clean = true;
  foreach ($bad_words_en as $word) {
    if (stripos($content, $word) !== false) {
      $content_is_clean = false;
      break;
    }
  }
  foreach ($bad_words_ru as $word) {
    if (stripos($content, $word) !== false) {
      $content_is_clean = false;
      break;
    }
  }

  if ($title_is_clean && $content_is_clean) {
    // Insert the new article into the database
    $sql = "INSERT INTO articles (title, content) VALUES ('$title', '$content')";
    if (mysqli_query($conn, $sql)) {
      echo "Статья успешно создана";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  } else {
    echo "Error: Ваша статья содержит плохие слова. Она не может быть опубликована";
  }
}

// Close the connection
mysqli_close($conn);
?>