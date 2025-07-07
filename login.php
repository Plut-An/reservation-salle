<?php
    require_once("ConnexBase.php");
    session_start(); 

function verifierConnexion($num_etudiant, $email){
    $bdd = ConnexBase::getConnexion();
    $req = "SELECT * FROM Etudiant WHERE num_etudiant = :numero AND email_etudiant = :email";
    $stmt = $bdd->prepare($req);
    $stmt->execute([
        ':numero' => $num_etudiant,
        ':email' => $email
    ]);
    return $stmt->rowCount() > 0;
}

$message = "";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $numero = $_POST['num_etudiant'] ?? '';
    $email = $_POST['email'] ?? '';

    if (verifierConnexion($numero, $email)) {
        header("Location: accueil.html");
        exit();
    } else {
        $message = "❌ NIE ou e-mail incorrect.";
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Document</title>
</head>
<body>
    <div class="log_container">
        <div class ="log_content">
            <form action="login.php" method="post">
                <h1>BIENVENUE !</h1>
                <?php if (!empty($message)) : ?>
                <p style="color: red;"><?= $message ?></p>
                <?php endif; ?>
                <label for="num_etudiant" class="label_login">NIE</label>
                <input type="text" name= "num_etudiant" class="input_nie">
                <br>
                <label for="email" class="label_login">E-mail</label>
                <input type="text" name="email" class="input_mail">
                <button class="entre" type="submit" name="enter">ENTRER</button>
            </form>
        </div>
    </div>

</body>
</html>