<?php get_header(); ?>

<section id="search"> <!-- Sección "Buscador" empieza -->
    <div class="search-inner">
        <form action="articulos/">
            <input type="text" name="s" placeholder="Buscar..." value="<?php echo get_search_query(); ?>" required />
            <imput type="submit" value="BUSCAR" />
        </form> <!-- Formulario "Buscar" termina -->
    </div>
</section> <!-- Sección "Buscador" termina -->

<main class="posts-wrapper"> <!-- Sección "Resultados" empieza -->
    <div class="post-excerpts">
        <?php
        if ( have_posts() ) : // Verifica si se hay publicaciones
            while ( have_posts() ) : // Bucle de publicaciones empieza
                the_post(); // Itera la publicación
                ?>
                <article <?php post_class(); ?>>
                    <?php get_template_part( 'template-parts/post-excerpt' ); // Inserta extracto de la publicación ?>
                </article>
                <?php
            endwhile; // Bucle de publicaciones termina
        else : // En caso de que no haya publicaciones
            ?>
            <div class="no-results">
                <h2 class="no-results-title">
                    <?php esc_html_e( 'No se encontraron resultados.', 'fundadores' ); ?>
                </h2>
            </div><!-- Mensaje "Sin resultados" termina -->
            <?php
        endif;
        ?>
    </div>
    <?php get_template_part( 'template-parts/pagination' ); // Inserta paginación ?>
</main><!-- Sección "Resultados" termina -->

<?php get_footer(); ?>