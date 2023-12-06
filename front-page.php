<?php get_header(); ?>

<section id="header" style="background-image: url(<?php echo get_header_image(); ?>);"><!-- Cabecera de página empieza -->
    <div class="header-inner">
        <?php
        if ( is_active_sidebar( 'header' ) ) :
            dynamic_sidebar( 'header' ); // Inserta widget "Cabecera"
        endif;
        ?>
        <div class="scroll-down-icon">
            <i class="fa-solid fa-angles-down fa-bounce"></i>
        </div> <!-- Icono "Ir hacia abajo" termina -->
    </div>
</section> <!-- Cabecera de página termina -->

<?php if ( is_active_sidebar( 'about' ) ) : ?>
    <section id="about"> <!-- Sección "Acerca de" empieza -->
        <div class="about-inner">
            <?php dynamic_sidebar( 'about' ); // Inserta widget "Acerca de" ?>
            <?php
                $about_page = new_get_page_by_title('Acerca de'); // Obtiene la página con título "Acerca de".
                if ( $about_page ) {
                    ?>
                    <div class="about-more">
                        <a href="<?php the_permalink( $about_page ); ?>" class="button"><?php printf( esc_html__( 'Conoce más aquí %s', 'fundadores' ), '&rarr;' ); ?></a>
                    </div> <!-- Botón "Conocer más aquí" termina -->
                <?php
                }
            ?>
        </div>
    </section> <!-- Sección "Acerca de" termina -->
<?php endif; ?>

<?php if ( is_active_sidebar( 'services' ) ) : ?>
    <section id="services"> <!-- Sección "Servicios" empieza -->
        <div class="services-inner">
            <?php dynamic_sidebar( 'services' ); // Inserta widget "Servicios" ?>
        </div>
    </section> <!-- Sección "Servicios" termina -->
<?php endif; ?>

<?php $has_more_posts = null; // Indica si se han publicado más de tres artículos ?>

<section id="articles"> <!-- Sección "Publicaciones recientes" empieza -->
    <div class="articles-inner">
        <?php if ( is_active_sidebar( 'articles-header' ) ) : ?>
            <div class="articles-header">
                <?php dynamic_sidebar( 'articles-header' ); // Inserta widget "Artículos recientes" ?>
            </div> <!-- Cabecera de la sección termina -->
        <?php endif; ?>

        <div class="articles-content post-excerpts "> <!-- Listado de publicaciones empieza -->
            <?php
            // Prepara una consulta que permita obtener las tres publicaciones más recientes
            $args = array(
                'post_type' => array( 'post' ), // Indica el tipo de página a consultar
                'posts_per_page' => 3 // Indica el número de resultados a obtener
            );
            $query = new WP_Query( $args );

            if ( $query->have_posts() ) : // Verifica si se ha publicado algo
                while ( $query->have_posts() ) : // Bucle de los artículos publicados empieza
                    $query->the_post(); // Itera la publicación
                    ?>
                    <article <?php post_class(); ?>>
                        <?php get_template_part( 'template-parts/post-excerpt' ); // Inserta extracto de la publicación ?>
                    </article>
                    <?php
                endwhile; // Bucle de los artículos publicados termina

                /* Obtiene el enlace de la página siguiente.
                   Si existe, es porque hay más publicaciones. */
                $has_more_posts = get_next_posts_link( '', $query->max_num_pages );

                wp_reset_postdata(); // Restaura el contexto de las etiquetas de la plantilla
            else : // En caso de que no se haya publicado nada aún
                ?>
                <div class="no-posts">
                    <i class="fa-solid fa-file-circle-minus icon"></i>
                    <p><?php esc_html_e( __( 'Sin publicaciones por el momento.', 'fundadores' ) ); ?></p>
                </div> <!-- Mensaje "Sin publicaciones" termina -->
                <?php
            endif;
            ?>
        </div> <!-- Listado de publicaciones termina -->

        <?php if ( $has_more_posts ) : ?>
            <div class="articles-more">
                <a href="/articulos/" class="button"><?php printf( esc_html__( 'Lee más aquí %s', 'fundadores' ), '&rarr;' ); ?></a>
            </div> <!-- Botón "Leer más aquí" termina -->
        <?php endif; ?>
    </div>
</section> <!-- Sección "Publicaciones recientes" termina -->

<?php if ( is_active_sidebar( 'location' ) ) : ?>
    <section id="location"> <!-- Sección "Ubicación" empieza -->
        <div class="location-inner">
            <?php dynamic_sidebar( 'location' ); // Inserta widget "Ubicación" ?>
        </div>
    </section> <!-- Sección "Ubicación" termina -->
<?php endif; ?>

<section id="contact"> <!-- Sección "Contactar" empieza -->
    <div id="contactar" class="contact-inner">
        <?php if ( is_active_sidebar( 'contact' ) ) : ?>
            <div class="contact-info">
                <?php dynamic_sidebar( 'contact' ); // Inserta widget "Información de contacto" ?>
            </div><!-- Subsección "Información de contacto" termina -->
        <?php endif; ?>
        <?php get_template_part( 'template-parts/contact-form' ); // Inserta formulario de contacto. ?>
    </div>
</section> <!-- Sección "Contactar" termina -->

<?php if ( is_active_sidebar( 'footer' ) ) : ?>
    <footer id="footer"> <!-- Sección "Pie de página" empieza -->
        <div class="footer-inner">
            <?php dynamic_sidebar( 'footer' ); // Inserta widget "Pie de página" ?>
        </div>
    </footer><!-- Sección "Pie de página" termina -->
<?php endif; ?>

<?php get_footer(); ?>