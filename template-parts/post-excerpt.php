<div class="excerpt-thumbnail">
    <a href="<?php the_permalink(); ?>" title="<?php echo esc_html( 'Continuar leyendo', 'fundadores') . ' «' . get_the_title() . '»'; ?>">
        <?php the_post_thumbnail('large'); // Inserta imagen destacada ?>
    </a>
</div><!-- Imagen del extracto termina -->

<header class="excerpt-header">
    <h3 class="excerpt-title">
        <a href="<?php the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
            <?php echo wp_trim_words( get_the_title(), 10 ); // Inserta título de la publicación ?>
        </a>
    </h3> <!-- Título de la publicación termina -->
</header> <!-- Cabecera del extracto termina -->

<div class="excerpt-content">
    <a href="<?php the_permalink(); ?>" title="<?php echo esc_html( 'Continuar leyendo', 'fundadores') . ' «' . get_the_title() . '»'; ?>">
        <?php the_excerpt(); // Inserta el contenido del extracto ?>
    </a>
</div> <!-- Contenido del extracto termina -->

<div class="excerpt-footer">
    <a href="<?php the_permalink(); ?>" title="<?php esc_html_e( 'Continuar leyendo', 'fundadores') . ' «' . get_the_title() . '»'; ?>" class="more">
        <?php esc_html_e( 'Continuar leyendo', 'fundadores'); ?>
    </a> <!-- Enlace "Contiuar leyendo" termina -->
</div> <!-- Pie del extracto termina -->