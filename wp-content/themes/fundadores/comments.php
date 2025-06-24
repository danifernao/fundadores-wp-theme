<?php
if ( post_password_required() ) {
    return;
}

if ( comments_open() ) :
    ?>
    <section id="comments" class="comments <?php echo get_option( 'show_avatars' ) ? 'show-avatars' : ''; ?>"> <!-- Sección comentarios empieza -->
        <?php
        if ( have_comments() ) :
            ?>
            <h2 class="comments-title"> <!-- Título de la sección "Comentarios" empieza -->
                <?php
                $comment_count = get_comments_number();
                if ( $comment_count === 1 ) {
                    esc_html_e( __( '1 comentario', 'fundadores' ) );
                } else {			    
                    printf(
                        esc_html( _n( '%s comentario', '%s comentarios', $comment_count, 'fundadores' ) ),
                        esc_html( number_format_i18n( $comment_count ) )
                    );
                }
                ?>
            </h2> <!-- Título de la sección "Comentarios" termina -->

            <ol class="comment-list"> <!-- Listado de comentarios empieza -->
                <?php
                wp_list_comments(
                    array(
                        'avatar_size' => 60,
                        'style'       => 'ol',
                        'short_ping'  => true,
                    )
                );
                ?>
            </ol> <!-- Listado de comentarios termina -->

            <?php
            the_comments_pagination(); //Inserta paginación de los comentarios
        endif;

        // Inserta el formulario para comentar
        comment_form(
            array(
                'title_reply'        => esc_html__( 'Publicar comentario', 'fundadores' ),
                'title_reply_before' => '<h2 id="reply-title" class="comment-reply-title">',
                'title_reply_after'  => '</h2>',
            )
        );
        ?>
    </section> <!-- Sección "Comentarios" termina -->
    <?php
endif;
?>