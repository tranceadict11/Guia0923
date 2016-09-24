<?php

//incluir la logica del modelo
requiere_once('modelo.php');

//obtener la lista de unidades 
$datos = Obtner_Unidades_Medida();

// Incluir la logica de la vista 
require('vista.php');
?>