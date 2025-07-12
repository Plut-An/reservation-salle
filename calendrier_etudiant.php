<?php
// Connexion et récupération des réservations
$db = new PDO('mysql:host=localhost;dbname=projet;charset=utf8', 'root', ''); 
    //mysql:host=localhost;dbname=projet;charset=utf8 : 
    //code : connexion à la base de données
    //PDO (PHP Data Object) : bibliothèque, pour intéragir avec la base de données

$query = $db->prepare('SELECT id_salle, date_reservation, id_horaire, id_etudiant FROM reservation');
$query->execute();
$reservations = $query->fetchAll(PDO::FETCH_GROUP|PDO::FETCH_UNIQUE);

// Date et salle sélectionnées
$date = $_GET['date'] ?? date('Y-m-d');
$salle = $_GET['salle'] ?? 'A001';

// Génération des jours de la semaine à partir de la date sélectionnée
$startOfWeek = date('Y-m-d', strtotime('monday this week', strtotime($date)));
$days = array_map(fn($i) => date('Y-m-d', strtotime("+$i days", strtotime($startOfWeek))), range(0, 5));

// Liste des salles
$salles = ['A002', 'A003', 'A101', 'A103', 'A105','A107', 'A203', 'A205', 'Info1', 'Info2', 'B200', 'B300', 'LABO'];

// Plages horaires
$horaires = ['08:00-09:00','09:00-10:00','10:00-11:00','11:00-12:00','12:00-13:00',
             '13:00-14:00','14:00-15:00','15:00-16:00','16:00-17:00','17:00-18:00'];
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Calendrier réservation</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="calendrier_etudiant.css">
    <link rel="stylesheet" href="accueil.css">
</head>

<body>
    <header class="navbar">
    <div class="logo">
      <img src="logo2.PNG" class="blanc" alt="Logo ESMIA">
      <h3>ESMIA UNIVERSITY</h3>
    </div>
    <ul>
      <li><a class="menu" href="accueil_reserv.php">Accueil</a></li>
      <li><a class="menu" href="formulaire.php">Formulaire</a></li>
      <li><a class="menu" href="calendrier.php">Calendrier</a></li>
      <li><a class="menu" href="propos.php">À propos</a></li>
      <li><a class="menu" href="aide.php">Aide</a></li>
    </ul>
  </header>

<hr>

    <form method="GET" class="filters">
        <label for="salle">Salle :</label>
        <select name="salle" id="salle">
            <?php foreach ($salles as $s): ?>
            <option value="<?= $s ?>" <?= $s === $salle ? 'selected' : '' ?>><?= $s ?></option>
            <?php endforeach; ?>
        </select>

        <label for="date">Date :</label>
        <input type="date" name="date" id="date" value="<?= $date ?>">

        <button type="submit">Voir la semaine</button>
    </form>

    <table>
        <thead>
            <tr>
                <th>Heures</th>
                <?php foreach ($days as $d): ?>
                <th class="day-header">
                    <?= ucfirst(strftime('%A', strtotime($d))) ?><br>
                    <?= date('d/m/Y', strtotime($d)) ?>
                </th>
                <?php endforeach; ?>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($horaires as $horaire): ?>
            <tr>
                <td class="time-cell"><?= $horaire ?></td>
                <?php foreach ($days as $d): 
          $key = "{$salle}_{$d}_{$horaire}";
          $taken = $reservations[$key] ?? false;
        ?>
                <td class="slot">
                    <?php if ($taken): ?>
                    <span class="booked">Réservé par <?= htmlspecialchars($taken['user']) ?></span>
                    <?php endif; ?>
                    <?php if (!$taken): ?>
                    <a class="add-btn"
                        href="formulaire.php?salle=<?= $salle ?>&date=<?= $d ?>&horaire=<?= urlencode($horaire) ?>">+</a>
                    <?php endif; ?>
                </td>
                <?php endforeach; ?>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

</body>

</html>