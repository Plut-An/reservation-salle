<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <header>
        <img class="logo" src="logo.jpg" alt="logo">
        <nav>
            <div class=menu>
                <ul>
                    <li><a href="acceuil.php">acceuil</a></li>
                    <li><a href="#">reservation</a></li>
                    <li><a href="#">aide</a></li>
                </ul>
             </div>
        </nav>
    </header>
    <div class="separator"></div>
    <section id ="content">
        <section class="gauche">
            <p>reservation de salle</p>
            <form action="reservation.php" method="post">
                <button class="btn" type="submit">Reserver</button>
            </form>
        </section>
        <section class="droite">
            <img class="phot" src="photo.png" alt="image">
        </section>
    </section>
    
</body>
</html>