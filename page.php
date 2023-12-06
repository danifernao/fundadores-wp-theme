<?php get_header(); ?>

<main id="<?php echo is_page( 'Contactar' ) ? 'contact' : ''; ?>" class="page-wrapper">
    <article <?php post_class( is_page( 'Contactar' ) ? 'contact-inner' : '' ); ?>> <!-- Publicación empieza -->
        <div class="page-content ">
            <?php the_content(); // Inserta el contenido de la publicación. ?>
        </div><!-- Contenido de la publicación termina -->
        <?php
        if (is_page( 'Contactar' ) ) { // Verifica si el título de la página es "Contactar"
            get_template_part( 'template-parts/contact-form' ); // Inserta formulario de contacto
        }
        ?>
    </article> <!-- Publicación termina -->
    <?php comments_template(); // Inserta los comentarios de la página ?>
</main>

<?php
get_footer();
?>