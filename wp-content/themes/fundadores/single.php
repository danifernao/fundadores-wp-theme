<?php get_header(); ?>

<main class="post-wrapper">
    <article <?php post_class(); ?>> <!-- Publicación empieza -->
        <div class="post-hero <?php echo get_the_post_thumbnail_url() ? 'has-thumbnail' : ''; ?>" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);">
            <div class="post-hero-inner">
                <?php if ( get_the_post_thumbnail_url() ) : ?>
                    <div class="post-featured-image">
                        <?php the_post_thumbnail(); ?>
                    </div><!-- Imagen de la portada termina. -->
                <?php endif; ?>
                <header class="post-header"> <!-- Cabecera de la portada empieza -->
                    <div class="post-date">
                        <time class="published" datetime="<?php echo date_i18n( 'c', get_post_timestamp( '', 'date' ) ); ?>">
                            <?php echo get_the_date(); ?>
                        </time>
                    </div> <!-- Fecha de la publicación termina -->
                    <h1 class="post-title">
                        <?php the_title(); ?>
                    </h1> <!-- Título de la publicación termina -->
                </header> <!-- Cabecera de la portada termina -->
            </div>
        </div> <!-- Portada de la publicación termina -->

        <div class="post-body"> <!-- Cuerpo de la publicación empieza -->
            <div class="post-content">
                <?php the_content(); // Inserta el contenido de la publicación ?>
            </div><!-- Contenido de la publicación termina -->
            <div class="post-categories-wrapper"> <!-- Categorías de la publicación empieza -->
                <?php if ( has_category() ) : ?>
                    <h3 class="post-categories-title">
                        <?php esc_html_e( 'Archivado en', 'fundadores' ); ?>:
                    </h3>
                    <?php the_category(); // Inserta las categorías de la publicación ?>
                <?php endif; ?>
            </div> <!-- Categorías de la publicación termina -->
        </div>  <!-- Cuerpo de la publicación termina -->

        <footer class="post-footer"> <!-- Pie de la publicación empieza -->
            <?php if ( has_tag() ) : ?>
                <div class="post-tags">
                    <i class="fa-solid fa-tags"></i>
                    <?php the_tags(); ?>
                </div><!-- Etiquetas de la publicación termina -->
            <?php endif; ?>
            <?php get_template_part( 'template-parts/post-share' ); // Inserta botones para compartir la publicación ?>
        </footer> <!-- pie de la publicación termina -->
    </article>
    <?php comments_template(); // Inserta los comentarios ?>
</main>

<?php
get_template_part( 'template-parts/pagination' ); //Inserta la paginación
get_footer();
?>