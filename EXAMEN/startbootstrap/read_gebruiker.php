<?php session_start();

include("config.php");
include('includes/header.php');

//$ingeschreven = '0';
?>

<!DOCTYPE html>
<html>
<head>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/src/assets/img/glr_logo.png" />

    <!-- link bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<main class="container p-4">
    <div class="row">

        <div class="col-md-16">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Naam</th>
                    <th>Studentmail</th>
                    <th>adres</th>
                    <th>Woonplaats</th>
                    <th>telnummer</th>
                    <th>geboortedatum</th>
                    <th>geslacht</th>
                    <th>Acties</th>
                </tr>
                </thead>
                <tbody>

                <!-- pak en echo de resultaten uit de database in de tabel -->
                <?php
                $reisID = $_GET['reisID'];
                $userID = $_SESSION['userID'];

                $query3 = "SELECT * FROM `gebruikers` WHERE `id` =".$userID;
                $result_tasks3 = mysqli_query($conn, $query3);

                while($row3 = mysqli_fetch_assoc($result_tasks3)) { ?>
                    <tr>
                        <td><?php echo $row3['naam']; ?></td>
                        <td><?php echo $row3['studentmail']; ?></td>
                        <td><?php echo $row3['adres']; ?></td>
                        <td><?php echo $row3['woonplaats']; ?></td>
                        <td><?php echo $row3['telnummer']; ?></td>
                        <td><?php echo $row3['geboortedatum']; ?></td>
                        <td><?php echo $row3['geslacht']; ?></td>
                        <td>
                            <form action="delete_inschrijf.php" method="POST">
                                <input type="hidden" name="reisID" value=<?php echo $reisID; ?>>
                                <input type="hidden" name="userID" value=<?php echo $row3['id']; ?>>
                                <input type="submit" name="delete_inschrijf" class="btn btn-danger btn-block" value="uitschrijven">
                            </form>
                            </br>
                            <form action="edit_inschrijf.php" method="POST">
                                <input type="hidden" name="reisID" value=<?php echo $reisID; ?>>
                                <input type="hidden" name="userID" value=<?php echo $row3['id']; ?>>
                                <input type="submit" name="delete_inschrijf" class="btn btn-secondary btn-block" value="edit">
                            </form>
                        </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
            <a href="read_reis.php" class="btn btn-secondary">
                <i class="fa fa-arrow-left"></i> Naar Inschrijven
            </a>
        </div>

    </div>

</main>

</html>
<?php include('includes/footer.php'); ?>
