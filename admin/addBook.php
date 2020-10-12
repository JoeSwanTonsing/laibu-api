<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Laibu</title>

  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>

<style>
  .form {
    padding: 20px;
    text-align: left;
  }
</style>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Laibu</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="addBook.php">Add Book
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <?php
    include('../init.php');
  ?>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">Add Book</h1>
        <p class="lead">Add Book Details (All Fields Are Required - Except for ones indicated as optional)</p>

        <form method="post" id="addbookform" class="form" action="actions/addBook.php">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="book_title">Title</label>
              <input type="text" class="form-control" id="book_title" placeholder="Book Title" name="book_title" required>
            </div>
            <div class="form-group col-md-6">
              <label for="book_subtitle">Sub-Title (Optional)</label>
              <input type="text" class="form-control" id="book_subtitle" placeholder="Book Sub-Title" name="book_subtitle">
            </div>
          </div>
          <div class="form-group">
            <label for="book_description">Book Description</label>
            <textarea class="form-control" id="book_description" rows="3" name="book_description" placeholder="Please provide a small description / a gist." required></textarea>
          </div>
          <div class="form-row">
            <div class="form-group col-md-3">
              <label for="book_year">Year Published</label>
              <input type="text" class="form-control" id="book_year" placeholder="Published Year" name="book_year">
            </div>
            <div class="form-group col-md-3">
              <label for="book_pages">Number of Pages</label>
              <input type="number" class="form-control" id="book_pages" placeholder="Number of Pages" name="book_pages">
            </div>
            <div class="form-group col-md-3">
              <label for="book_author">Author</label>
              <select class="form-control" id="author" required>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
            <div class="form-group col-md-3">
              <label for="book_genre">Genre</label>
              <select class="form-control" id="book_genre" required>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-2">
              <label for="book_thumbnail">Cover Image</label>
              <input type="file" class="form-control-file" id="book_thumbnail" required>
            </div>
          </div>

          <button type="submit" class="btn btn-primary">Sign in</button>
        </form>

      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.slim.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
