<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <div id="topbar"> <!-- Barra de navegación empieza -->
        <div class="topbar-inner">
            <header class="topbar-header"> <!-- Identidad del sitio web empieza -->
                <?php the_custom_logo(); // Inserta logotipo del sitio web ?>
                <?php if ( !is_front_page() && !is_home() && !is_archive() ) : ?>
                    <h2 class="topbar-title">
                        <a href="<?php echo get_bloginfo('url'); ?>">
                            <?php bloginfo( 'name' ); //Inserta título del sitio web ?>
                        </a>
                    </h2><!-- Título segundo nivel del sitio web termina -->
                <?php else : ?>
                    <h1 class="topbar-title">
                        <a href="<?php echo get_bloginfo('url'); ?>">
                            <?php bloginfo( 'name' ); //Inserta título del sitio web ?>
                        </a>
                    </h1><!-- Título primer nivel del sitio web termina -->
                <?php endif; ?>
            </header> <!-- Identidad del sitio web termina -->

            <nav class="topbar-menu">
                <?php
                // Inserta widget "Menú Principal"
                wp_nav_menu( array(
                    'theme_location' => 'menu-1'
                ) );
                ?>
            </nav> <!-- Menú principal termina -->

            <div class="sideout-menu-toggle">
                <button aria-controls="sideout-menu" aria-label="<?php esc_html_e( 'Abrir menú', 'fundadores' ); ?>" title="<?php esc_html_e( 'Ver menú', 'fundadores' ); ?>">
                    <i class="fa-solid fa-bars"></i>
                </button>
            </div> <!-- Opción para abrir menú en móviles termina -->
        </div>
    </div><!-- Barra de navegación termina -->