<?php get_header(); ?>

<div id="not-found">
    <div class="not-found-inner">
        <h1 class="not-found-title">
            <?php esc_html_e( '404', 'fundadores'); ?>
        </h1> <!-- Título "No encontrado" termina -->
        <p class="not-found-description">
            <?php esc_html_e( 'La página solicitada no existe o ha sido movida.', 'fundadores' ); ?>
        </p><!-- Mensaje "No encontrado" termina -->
    </div>
</div>

<?php get_footer(); ?>