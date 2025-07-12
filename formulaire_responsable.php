<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="formulaire.css">
  <link rel="stylesheet" href="accueil.css">
  <title>Formulaire</title>
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
    </ul>
  </header>

  <hr>
  
  <form class="formulaire">
    <h2>Blocage salle</h2>

    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required>

    <label for="prenom">Prénom :</label>
    <input type="text" id="prenom" name="prenom" required>

    <label for="email">Email :</label>
    <input type="email" id="email" name="email" required>

    <label for="salle">Salle :</label>
    <select name="salle" id="salle" required>
      <option value="">-- Choisissez une salle --</option>
      <option value="A002">A002</option>
      <option value="A003">A003</option>      
      <option value="A101">A101</option>
      <option value="A103">A103</option>
      <option value="A105">A105</option>
      <option value="A107">A107</option>
      <option value="A203">A203</option>
      <option value="A205">A205</option>
      <option value="Info1">Info1</option>
      <option value="Info2">Info2</option>
      <option value="B200">B200</option>
      <option value="B300">B300</option>
      <option value="LABO">LABO</option>
    </select>

    <label for="telephone">Téléphone :</label>
    <input type="tel" id="telephone" name="telephone">

    <label for="date">Date blocage :</label>
    <input type="date" id="date" name="date" required>

    <label for="heure">Heure :</label>
    <select id="heure" name="heure" required>
      <option value="">-- Choisissez le créneau --</option>
      <option value="7h-10h">7h-10h</option>
      <option value="10h-12h">10h-12h</option>
      <option value="12h-15h">12h-15h</option>
      <option value="15h-17h">15h-17h</option>
    </select>

    <label>Problème de la salle :</label>
    <input type="text" name="motif">


    <button type="submit">Bloquer</button>
  </form>

  <h2 class="by">Merci de bien remplir pour la maintenance de salles</h2>

</body>
</html>
