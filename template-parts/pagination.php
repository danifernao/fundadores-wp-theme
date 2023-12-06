<div class="pagination">
    <nav class="pagination-inner">
        <ul class="pagination-links"> <!-- Paginación empieza -->
            <?php if ( is_single() ) : ?>
                <li><?php next_post_link( '&larr; %link' ); ?></li>
                <li><?php previous_post_link( '%link &rarr;' ); ?></li>
            <?php elseif ( ! is_page() ) : ?>
                <li><?php previous_posts_link( sprintf( esc_html__( '%s Anteriores', 'fundadores' ), '&larr; ' ) ); ?></li>
                <li><?php next_posts_link( sprintf( esc_html__( 'Siguientes %s', 'fundadores' ), ' &rarr;' ) ); ?></li>
            <?php endif; ?>
        </ul><!-- Paginación termina -->
    </div>
</div>