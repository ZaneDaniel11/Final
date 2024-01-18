<?php
    include("sidevar.php");
    ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>CodePen - Responsive Table</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="./style.css">

</head>

<body style="background-color:white">

  <h1>RWD List to Table</h1>
  <table class="rwd-table" style="margin-left: 200px;">
    <tr>
      <th scope="col">#</th>
      <th scope="col">BUS NO.</th>
      <th scope="col">DEPARTURED</th>
      <th scope="col">DESTINATION</th>
      <th scope="col">SERVICE</th>
      <th scope="col">NUMBER</th>
      <th scope="col">PASS.TICKET</th>
      <th scope="col">BAGG.TICKET</th>
      <th scope="col">PASSENGER</th>
      <th scope="col">D_NAME</th>
      <th scope="col">C_NAME</th>
      <th scope="col">Date</th>
      <th scope="col" colspan="2">OPERATION</th>
    </tr>
    <?php
    include("Connection.php");
    $sql = "SELECT * FROM main_tb";
    $result = mysqli_query($conn, $sql);

    if ($result) {
      while ($row = mysqli_fetch_assoc($result)) {
        $id = $row['id'];
        $bus_no = $row['bus_no'];
        $time_dept = $row['time_dept'];
        $route = $row['route_destination'];
        $unit = $row['unit'];
        $cor_number = $row['cor_number'];
        $pass_ticket = $row['pass_ticket'];
        $bagg_ticket = $row['bagg_ticket'];
        $passenger = $row['passenger'];
        $d_name = $row['drivers_name'];
        $c_name = $row['conductors_name'];
        $time = $row['date'];

        echo '
                                <tr>
                                    <td class="bus_id">' . $id . '</td>
                                    <td>' . $bus_no . '</td>
                                    <td>' . $time_dept . '</td>
                                    <td>' . $route . '</td>
                                    <td>' . $unit . '</td>
                                    <td>' . $cor_number . '</td>
                                    <td>' . $pass_ticket . '</td>
                                    <td>' . $bagg_ticket . '</td>
                                    <td>' . $passenger . '</td>
                                    <td>' . $d_name . '</td>
                                    <td>' . $c_name . '</td>
                                    <td>' . $time . '</td>
                                    <td><a href="#" class="btn btn-primary view_data">View Data</a></td>
                                    <td><a href="01-History-Update.php?updateid=' . $id . '" class="btn btn-info">Update</a></td>
                                    <td><button class="btn btn-danger" role="button" onclick="confirmDelete(' . $id . ')">Delete</button></td>
                                </tr>
                            ';
      }
    } else {
      echo "No result";
    }
    ?>

  </table>

  <p>&larr; Drag window (in editor or full page view) to see the effect. &rarr;</p>
  <!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="./script.js"></script>

</body>

</html>