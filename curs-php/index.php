<?php 

    echo("<h1>Hola Mon!</h1>");

    $bd = new SQLite3('db1.db');
    $bd->exec('CREATE TABLE clients (id INT unsigned auto_increment, nom STRING, empresa STRING, CONSTRAINT `PRIMARY` PRIMARY KEY (id))');
    $bd->exec("INSERT INTO clients (nom, empresa) VALUES ('Ignasi', 'ITB')");
    $bd->exec("INSERT INTO clients (nom, empresa) VALUES ('Roger', 'ITB')");
    $result = $bd->query('SELECT * FROM clients');

    echo("<pre>");
    while ($client = $result->fetchArray()) {
        var_dump($client);
    }
    echo("</pre>");

    $bd->close();
