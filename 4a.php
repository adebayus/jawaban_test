<!DOCTYPE html>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
     $conn = mysqli_connect('localhost','root','','mobile_ganggu')
     or die('Error connecting to MySQL server.');
    
    
    $sql1 = "SELECT * FROM hero";

    $result = $conn->query($sql1);
    
    if ($result->num_rows > 0) {
        // output data of each row
        echo "<br><h3>Jawaban Nomor 1 4a  tampilkan semua hero </h3></br> ";
        while($row = $result->fetch_assoc()) {
            echo "<br> Nama Hero: ". $row["name"]. "<br>";
        }
    } else {
        echo "0 results";
    }


    // batas 2 

   
   $sql2 = "SELECT `role`.`name` AS `nama role`, `hero`.`name` AS ` nama hero`, `hero`.`deskripsi` AS `deskripsi hero` FROM `role` JOIN `hero` ON `hero`.`id_role` = `role`.`id`";

   $result2 = $conn->query($sql2);
//    echo "$sql2";
    // RecordSet = mysql_fetch_array($Query);
   
   if ($result2->num_rows > 0) {
       // output data of each row
       echo "<br><h3>Jawaban Nomor 2 4a name role , nama hero , deskripsi</h3></br> ";
       while($row2 = $result2->fetch_assoc()) {
           echo "<br> Nama Role: ". $row2["nama role"]. " , Nama Hero : ". $row2["nama hero"]. " , Deskripsi : ". $row2["deskripsi hero"] ."<br>";
       }
   } else {
       echo "0 results";
   }


   $sql3 = "SELECT `hero`.`id`, `hero`.`deskripsi`FROM `hero`";

   $result3 = $conn->query($sql3);

   if ($result3->num_rows > 0) {
       // output data of each row
       echo "<br><h3>Jawaban Nomor 3 4a name role , nama hero , deskripsi</h3></br> ";
       while($row3 = $result3->fetch_assoc()) {
           echo "<br> Hero id: ". $row3["id"]. ", Deskripsi : ". $row3["deskripsi"] ."<br>";
       }
   } else {
       echo "0 results";
   }

   


    ?>


</body>
</html>