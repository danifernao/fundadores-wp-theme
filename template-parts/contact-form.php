<div class="contact-form">
    <form> <!-- Formulario de contacto empieza -->
        <div class="field field-1">
            <label for="name"><?php esc_html_e( 'Nombre completo', 'fundadores' ); ?>:</label>
            <input id="name" name="name" type="text" minlength="2" maxlength="300" required="required" title="Ingrese un nombre entre dos y doscientas letras" />
        </div> <!-- Campo nombre termina -->

        <div class="field field-2">
            <label for="email"><?php esc_html_e( 'Correo electrónico', 'fundadores' ); ?>:</label>
            <input id="email" name="email" type="email" required="required" />
        </div> <!-- Campo correo electrónico termina -->

        <div class="field field-3">
            <label for="phone"><?php esc_html_e( 'Número de teléfono', 'fundadores' ); ?>:</label>
            <input id="phone" name="phone" type="text" name="phone" minlength="7" maxlength="25" pattern="^[\d\-\+\(\) ]+$" required="required" title="Ingrese un número válido" />
        </div> <!-- Campo teléfono termina -->

        <div class="field field-4">
            <label for="message"><?php esc_html_e( 'Mensaje', 'fundadores' ); ?>:</label>
            <textarea id="message" name="message" minlength="20" maxlength="5000" required="required"></textarea>
        </div> <!-- Campo mensaje termina -->

        <?php
            $site_key = get_option( '_recaptcha_site_key' );
            if ( ! empty( $site_key ) ):
                ?>
                <div class="field field-5">
                    <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>" data-theme="<?php echo is_front_page() ? 'dark' : 'light'; ?>"></div>
                </div> <!-- Campo reCAPTCHA termina -->
                <?php
            endif;
        ?>

        <div class="field field-6">
            <input type="submit" value="Enviar" />
        </div> <!-- Botón "Enviar" termina -->

        <div class="status">
        </div> <!-- Estado del proceso termina -->
    </form> <!-- Formulario de contacto termina -->
</div>