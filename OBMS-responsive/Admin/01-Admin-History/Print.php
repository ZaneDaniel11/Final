
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Your Page Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


</head>

<body>

    <div class="row justify-content-center mt-4">
        <h1 class="text-center">History</h1>
        <button><a href="">Print</a></button>
    </div>
    <div class="modal fade" id="viewusermodal" tabindex="-1" role="dialog" aria-labelledby="viewusermodalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewusermodalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="view_user_data"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="margin-left:200px">
        <table class="table table-bordered table-sm table-responsive">
            <thead class="thead-dark">
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
                    <th scope="col">NAME</th>
                    <th scope="col">NAME</th>
                    <th scope="col">Date</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include("../Connection.php");
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
                                   
                                </tr>
                            ';
                    }
                } else {
                    echo "No result";
                }
                ?>
            </tbody>
        </table>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
      
    </div>

</body>