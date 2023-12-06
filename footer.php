    <nav id="sideout-menu"> <!-- Menú para móviles empieza -->
        <h3>
            <? esc_html_e( 'Menú principal', 'fundaores' ); ?>
        </h3> <!-- Título del menú termina -->
        <?php
        // Inserta widget "Menú Principal"
        wp_nav_menu( array(
            'theme_location' => 'menu-1',
        ) );
        ?>
        <button class="menu-close" title="<?php esc_html_e( 'Cerrar', 'fundadores' ); ?>" aria-label="<?php esc_html_e( 'Cerrar menú', 'fundadores' ); ?>">
            <i class="fa-solid fa-xmark"></i>
        </button> <!-- Botón "cerrar menú" termina -->
    </nav><!-- Menú para móviles termina -->
    <?php if ( ! is_front_page() ) : ?>
        <footer id="site-footer">
            <a href="<?php echo get_home_url(); ?>" title="<?php esc_html_e( 'Ir a la página principal', 'fundadores' ); ?>">&#169; <?php echo date('Y') . ' ' . get_bloginfo( 'name' ); ?></a>
            <?php if ( get_privacy_policy_url() ) : ?>
                | <a href="<?php echo get_privacy_policy_url(); ?>"><?php esc_html_e( 'Política de privacidad', 'fundadores' ); ?></a>
            <?php endif; ?>
        </footer><!-- Pie de página termina -->
    <?php endif; ?>
</body>
</html>