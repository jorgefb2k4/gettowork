
<?php if ($_SESSION['administrador']=="Si"){
  // Barra de navegacíon admininistrator
 echo '
<nav class="navbar is-light" role="navigation" aria-label="main navigation">
<div class="navbar-brand">
  <a class="navbar-item" href="index.php?vista=home">
  <img src="./img/logo.png" alt="Logo" width="112" height="38">
  </a>
  
  <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
    <span aria-hidden="true"></span>
    <span aria-hidden="true"></span>
    <span aria-hidden="true"></span>
    <span aria-hidden="true"></span>
  </a>
</div>

<div id="navbarBasicExample" class="navbar-menu">
  <div class="navbar-start">
    
    <div class="navbar-item has-dropdown is-hoverable">
      <a class="navbar-link">Gestión de usuarios</a>
      
      <div class="navbar-dropdown">
        <a href="index.php?vista=user_list" class="navbar-item">Lista de usuarios</a>
        <a href="index.php?vista=user_search" class="navbar-item">Buscar usuario</a>
        <a href="index.php?vista=user_new" class="navbar-item">Nuevo usuario</a>
        <a href="index.php?vista=user_search" class="navbar-item">Modificar usuario</a>
        <a href="index.php?vista=user_search" class="navbar-item">Eliminar usuario</a>
      </div>
    </div>

    <div class="navbar-item has-dropdown is-hoverable">
      <a class="navbar-link">Gestión de puestos</a>
      
      <div class="navbar-dropdown">
        <a href="index.php?vista=spot_list" class="navbar-item">Lista de puestos</a>
        <a href="index.php?vista=spot_search" class="navbar-item">Buscar puesto</a>
        <a href="index.php?vista=spot_new" class="navbar-item">Nuevo puesto</a>
        <a href="index.php?vista=spot_search" class="navbar-item">Modificar puesto</a>
        <a href="index.php?vista=spot_search" class="navbar-item">Eliminar puesto</a>
      </div>
    </div>

    <div class="navbar-item has-dropdown is-hoverable">
      <a class="navbar-link">Gestión de reservas</a>
      
      <div class="navbar-dropdown">
        <a href="index.php?vista=booking_list" class="navbar-item">Lista de reservas</a>
        <a href="index.php?vista=booking_search" class="navbar-item">Buscar reserva</a>
        <a href="index.php?vista=booking_new" class="navbar-item">Nueva reserva</a>
        <a href="index.php?vista=booking_search" class="navbar-item">Eliminar reserva</a>
      </div>
    </div>

    <div class="navbar-item has-dropdown is-hoverable">
      <a class="navbar-link">Ayuda</a>
      
      <div class="navbar-dropdown">
        <a href="index.php?vista=about" class="navbar-item">Acerca de</a>
      </div>
    </div>

  </div>

  <div class="navbar-end">
    <div class="navbar-item">
      <div class="buttons">
           <strong>', $_SESSION['email']; echo '</strong>
          <a href="index.php?vista=user_update&user_id_up=', $_SESSION['id']; echo '" class="button is-info">Mi cuenta</a>
          <a href="index.php?vista=logout" class="button is-link"> Salir</a>
      </div>
    </div>
  </div>
</div>
</nav>
';

}else{
// Barra de navegación usuario
echo '
<nav class="navbar is-light" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="index.php?vista=home">
    <img src="./img/logo.png" alt="Logo" width="128" height="128">
    </a>
    
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      
      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">Gestión de reservas</a>
      
        <div class="navbar-dropdown">
          <a href="index.php?vista=booking_list" class="navbar-item">Lista de reservas</a>
          <a href="index.php?vista=booking_search" class="navbar-item">Buscar reserva</a>
          <a href="index.php?vista=booking_new" class="navbar-item">Nueva reserva</a>
          <a href="index.php?vista=booking_search" class="navbar-item">Eliminar reserva</a>
        </div>
      </div>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">Ayuda</a>
        
        <div class="navbar-dropdown">
          <a href="index.php?vista=about" class="navbar-item">Acerca de</a>
        </div>
      </div>
    </div>
  </div>
  
  <div class="navbar-end">
    <div class="navbar-item">
      <div class="buttons">
        <strong>', $_SESSION['email']; echo '</strong>
        <a href="index.php?vista=user_update&user_id_up=', $_SESSION['id']; echo '" class="button is-info">Mi cuenta</a>
        <a href="index.php?vista=logout" class="button is-link"> Salir</a>
      </div>
    </div>
  </div>
</nav>
';
}

?>