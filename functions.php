<?php
    /**
     * General
     */

    // Retira la barra de administración de WordPress del sitio web.
    add_filter( 'show_admin_bar', '__return_false' );

    // Habilita la etiqueta del título del documento en el tema.
    add_theme_support( 'title-tag' );

    // Habilita el establecimiento de una imagen como cabecera en el tema.
    add_theme_support( 'custom-header', array( 'header-text' => false ) );

    // Habilita el etablecimiento de un logotipo en el tema.
    add_theme_support( 'custom-logo' );

    // Habilita la barra de menús en el tema.
    register_nav_menus( array(
        'menu-1' => __( 'Menú principal', 'tema-hi-fundadores' ),
    ));

    // Habilita las miniaturas de las publicaciones en el tema.
    add_theme_support( 'post-thumbnails' );

    // Establece el número máximo de palabras de los extractos de las publicaciones.
    function custom_excerpt_length( $length ) {
        return 10;
    }
    
    add_filter( 'excerpt_length', 'custom_excerpt_length', 999 );

    // Retira el campo web del formulario de comentario.    
    function remove_website_field( $fields ) {
        unset( $fields['url'] );
        return $fields;
    }
    
    add_filter( 'comment_form_default_fields', 'remove_website_field' );

    // Cambia el enlace de la cabecera del formulario de la página de inicio de sesión.
    function login_logo_url() {
        return home_url();
    }

    add_filter( 'login_headerurl', 'login_logo_url' );
    
    // Cambia el texto de la cabecera de del formulario de la página de inicio de sesión.
    function login_logo_url_title() {
        return 'Hogar Infantil Los Fundadores';
    }

    add_filter( 'login_headertext', 'login_logo_url_title' );

    /**
     * Áreas de widgets.
     */

    // Registra un área para widgets.
    function register_widgets_area( $name, $id, $description, $raw = false ){
        register_sidebar( array(
            'name' => esc_html__( $name, 'fundadores' ),
            'id' => $id,
            'description' => $description,
            'before_widget' => $raw ? '' : '<div id="%1$s" class="widget %2$s">',
            'after_widget' => $raw ? '' : '</div>',
            'before_title' => $raw ? '' : '<div class="widget-title-holder"><h3 class="widget-title">',
            'after_title' => $raw ? '' : '</h3></div>',
        ));
    }
    
    // Registra las áreas de widgets del tema.
    function add_widgets_areas(){
        register_widgets_area( 'Cabecera', 'header', 'Área de los bloques de la cabecera principal.' );
        register_widgets_area( 'Acerca de', 'about', 'Área de los bloques de la sección de acerca del HI.' );
        register_widgets_area( 'Servicios', 'services', 'Área de los bloques de los servicios que se prestan.' );
        register_widgets_area( 'Artículos recientes', 'articles-header', 'Área de los bloques de la cabecera de los artículos recientes.' );
        register_widgets_area( 'Ubicación', 'location', 'Area de los bloques que muestran la ubicación del HI.' );
        register_widgets_area( 'Información de contacto', 'contact', 'Área de los bloques de la información de contacto.' );
        register_widgets_area( 'Pie de página', 'footer', 'Área de los bloques del pie de página.' );
    }

    add_action('widgets_init', 'add_widgets_areas');


    /**
     * reCaptcha
     */

    // Genera el HTML del campo para la clave, pública o secreta, del reCAPTCHA.
    function display_recaptcha_field( $args ) {
        $option_name = '_recaptcha_' . $args['key_name'];
        $field_id = 'recaptcha_' . $args['key_name'];
        $field_value = get_option( $option_name );
        ?>
        <input id="<?php echo $field_id; ?>" value="<?php echo esc_attr( $field_value ); ?>" name="<?php echo $option_name; ?>"/>
        <?php
    }

    // Registra los campos para la clave, pública o secreta, del reCAPTCHA.
    function register_recaptcha_settings( $key_name, $key_description ) {
        $option_name = '_recaptcha_' . $key_name;
        $field_id = 'recaptcha_' . $key_name;

        register_setting(
            'general',
            $option_name,
            array(
                'type' => 'string',
                'sanitize_callback' => 'sanitize_text_field'
            )
        );

        add_settings_field(
            $field_id,
            esc_html__( $key_description, 'fundadores' ),
            'display_recaptcha_field',
            'general',
            'default',
            array(
                'key_name' => $key_name
            )
        );
    }
    
    // Agrega los campos de las claves públicas y secretas del reCAPTCHA en la configuración de WordPress.
    add_action( 'admin_init', function () {
        register_recaptcha_settings( 'site_key', 'Clave de sitio de reCAPTCHA' );
        register_recaptcha_settings( 'secret_key', 'Clave secreta de reCAPTCHA' );
    } );

    // Genera el HTML del reCAPTCHA para los formularios de inicio de sesión y recuperación de contraseña.
    function display_auth_recaptcha() {
        $site_key = get_option( '_recaptcha_site_key' );
        if ( ! empty( $site_key ) ) {
            ?>
            <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
            <?php
        }
    }

    // Genera el HTML del reCAPTCHA para el formulario de comentario.
    function display_comment_recaptcha( $submit_field ) {
        $site_key = get_option( '_recaptcha_site_key' );
        if ( ! empty( $site_key ) ) {
            $submit_field['submit_field'] = "<div class='g-recaptcha' data-sitekey='$site_key'></div>" . $submit_field['submit_field']; 
        }
        return $submit_field;
    }

    // Agrega el reCAPTCHA al formulario de inicio de sesión.
    add_action( 'login_form', 'display_auth_recaptcha' );

    // Agrega el reCAPTCHA al formulario de recuperación de contraseña.
    add_action( 'lostpassword_form', 'display_auth_recaptcha' );

    // Agrega el reCAPTCHA al formulario de comentario.
    if ( !is_user_logged_in() ) {
        add_filter('comment_form_defaults', 'display_comment_recaptcha');
    }

    // Conecta con Google y verifica si el reCAPTCHA fue resuelto.
    function verify_recaptcha_response( $captcha ) {
        $secret_key = get_option( '_recaptcha_secret_key' );
        if ( ! empty( $secret_key ) ) {
            $data = http_build_query(
                array( 
                    'secret' => $secret_key, 
                    'response' => $captcha,
                    'remoteip' => $_SERVER['REMOTE_ADDR']
                ) 
            );
    
            $options = array( 
                'http' => array( 
                    'method'  => 'POST', 
                    'header'  => 'Content-type: application/x-www-form-urlencoded', 
                    'content' => $data
                ) 
            );
    
            $context  = stream_context_create($options);
            $response = json_decode( file_get_contents( 'https://www.google.com/recaptcha/api/siteverify', false, $context ), true );
    
            if( !empty( $response['success'] ) ) { 
                return true;
            } else { 
                return false;
            }
        } else {
            return true;
        }
    }

    // Verifica si se ha fallado con el reCAPTCHA del formulario de inicio de sesión.
    function check_auth_recaptcha( WP_User $user ) {
        $recaptcha = $_POST['g-recaptcha-response'];
        if ( empty( $recaptcha ) ) {
            return new WP_Error( 'captcha_missing', esc_html__( 'Por favor, resuelva el reCaptcha.', 'fundadores' ) );
        } elseif ( ! verify_recaptcha_response( $recaptcha ) ) { 
            return new WP_Error( 'captcha_no_valid', esc_html__( 'reCaptcha no válido.', 'fundadores' ) );
        }
        return $user;
    }

    // Verifica si se ha fallado con el reCAPTCHA del formulario de recuperación de contraseña.
    function check_reset_recaptcha( WP_Error $error ) {
        $recaptcha = $_POST['g-recaptcha-response'];
        if ( empty( $recaptcha ) ) {
            return new WP_Error( 'captcha_missing', esc_html__( 'Por favor, resuelva el reCaptcha.', 'fundadores' ) );
        } elseif ( ! verify_recaptcha_response( $recaptcha ) ) { 
            return new WP_Error( 'captcha_no_valid', esc_html__( 'reCaptcha no válido.', 'fundadores' ) );
        }
        return $error;
    }

    // Verifica si se ha fallado con el reCAPTCHA del formulario de comentario.
    function check_comment_recaptcha() {
        $recaptcha = $_POST['g-recaptcha-response'];
        if ( empty( $recaptcha ) ){ 
            wp_die( sprintf(
                esc_html__( '%sERROR%s Por favor, resuelva el reCaptcha. %sAtrás%s', 'fundadores' ), '<h1>', '</h1><p>', '</p><p><a href="javascript:history.back();">&larr; ', '</a></p>'
            ) );
        } elseif ( ! verify_recaptcha_response( $recaptcha ) ) { 
            wp_die( sprintf(
                esc_html__( '%sERROR%s reCaptcha no válido. %sAtrás%s', 'fundadores' ), '<h1>', '</h1><p>', '</p><p><a href="javascript:history.back();">&larr; ', '</a></p>'
            ) );
        }
    }
    
    // Chequea los reCAPTCHA.
    if ( ! is_user_logged_in() && ! empty( get_option( '_recaptcha_site_key' ) ) ) { 
        add_filter( 'wp_authenticate_user', 'check_auth_recaptcha' );
        add_action( 'lostpassword_post', 'check_reset_recaptcha' );
        add_action( 'pre_comment_on_post', 'check_comment_recaptcha' );
    }

    /**
     * Imagen miniatura por defecto.
     */

    // Genera el HTML del campo para la ID de la imagen miniatura por defecto.
    function display_default_thumbnail_id() {
        $value = get_option( '_default_thumbnail_id' );
        $value = wp_attachment_is_image( $value ) ? $value : '';
        ?>
        <input id="default_thumbnail_id" value="<?php echo esc_attr( $value ); ?>" name="_default_thumbnail_id"/>
        <?php
    }

    // Registra el campo para el ID de la imagen miniatura por defecto.
    function default_thumbnail_id_settings() {
        register_setting(
            'general',
            '_default_thumbnail_id',
            array(
                'type' => 'string',
                'sanitize_callback' => 'sanitize_text_field'
            )
        );
        add_settings_field(
            'default_thumbnail_id',
            esc_html__( 'ID de la imagen miniatura por defecto', 'fundadores' ),
            'display_default_thumbnail_id',
            'general',
            'default'
        );
    }

    // Agrega el campo de la imagen miniatura por defecto en la configuración de WordPress.
    add_action( 'admin_init', 'default_thumbnail_id_settings' );

    // Indica que se dispone de una imagen miniatura por defecto.
    function has_default_thumbnail_id( $has_image ) {
        $default_thumbnail_id = get_option( '_default_thumbnail_id' );
        if ( ! empty( $default_thumbnail_id ) ) {
            $has_image = true;
        }
        return $has_image;
    }

    add_filter( 'has_post_thumbnail', 'has_default_thumbnail_id' );

    // Establece la imagen miniatura por defecto.
    function set_default_thumbnail_image( $image, $post_id, $post_thumbnail_id, $size ) {
        $default_thumbnail_id = get_option( '_default_thumbnail_id' );
        if ( empty( $image ) && ! empty( $default_thumbnail_id ) ) {
            $image = wp_get_attachment_image( $default_thumbnail_id, $size );
        }
        return $image;
    }

    add_filter( 'post_thumbnail_html', 'set_default_thumbnail_image', 10, 4 );

    /**
     * Obtiene una página por el título de esta.
     */

    function new_get_page_by_title( $page_title, $post_type = 'page' ) {
        $query = new WP_Query(
            array(
                'post_type'              => $post_type,
                'title'                  => $page_title,
                'post_status'            => 'all',
                'posts_per_page'         => 1,
                'no_found_rows'          => true,
                'ignore_sticky_posts'    => true,
                'update_post_term_cache' => false,
                'update_post_meta_cache' => false,
                'orderby'                => 'post_date ID',
                'order'                  => 'ASC',
            )
        );

        $page_got_by_title = null;
         
        if ( ! empty( $query->post ) ) {
            $page_got_by_title = $query->post;
        }

        return $page_got_by_title;
    }

    /**
     * Correos electrónicos.
     */

    // Genera el HTML del campo para la dirección electrónica a donde se enviarán los mensajes del formulario de contacto.
    function display_contact_email_field( $args ) {
        $option_name = '_contact_email';
        $field_id = 'contact_email';
        $field_value = get_option( $option_name );
        ?>
        <input id="<?php echo $field_id; ?>" value="<?php echo esc_attr( $field_value ); ?>" name="<?php echo $option_name; ?>"/>
        <?php
    }

    // Registra el campo para la dirección electrónica a donde se enviarán los mensajes del formulario de contacto.
    function default_contact_email_settings() {
        register_setting(
            'general',
            '_contact_email',
            array(
                'type' => 'string',
                'sanitize_callback' => 'sanitize_text_field'
            )
        );
        add_settings_field(
            'contact_email',
            esc_html__( 'Dirección de correo electrónico del formulario de contacto', 'fundadores' ),
            'display_contact_email_field',
            'general',
            'default'
        );
    }
    
    // Agrega el campo de la dirección de correo electrónica en la configuración de WordPress.
    add_action( 'admin_init', 'default_contact_email_settings' );

    // Establece la información del remitente de los correos electrónicos enviados por WordPress.
    add_filter( 'wp_mail_from', 'sender_email' );
    add_filter( 'wp_mail_from_name', 'sender_name' );

    function sender_email( $default_sender_address ) {
        $contact_email_address = get_option( '_contact_email' );

        if ( empty( $contact_email_address ) ) {
            $contact_email_address = get_option( 'admin_email' );
        }

        return $contact_email_address;
    }

    function sender_name( $original_sender_name ) {
        return get_option( 'blogname' );
    }

    /**
     * Formulario de contacto.
     */

    // Prepara una respuesta REST.
    function response( $status, $message ) {
        return new WP_REST_Response(
            array(
                'status' => $status,
                'message' => $message
            )
        );
    }

    // Envía los datos ingresados en el formulario de contacto.
    function sendMail( WP_REST_Request $request ) {
        $site_name = get_option( 'blogname' );
        $params = $_POST;

        if ( ! empty( get_option( '_recaptcha_secret_key' ) ) && ( 
             ! isset( $params['g-recaptcha-response'] ) || empty( $params['g-recaptcha-response'] ) ||
             ! verify_recaptcha_response( $params['g-recaptcha-response'] ) ) ) {
            return response( 422,  'reCAPTCHA no válido.');
        }

        if ( ! isset( $params['name'] ) || ! isset( $params['email'] ) ||
             ! isset( $params['phone'] ) || ! isset( $params['message'] ) ) {
            return response( 400, esc_html( 'Solicitud no válida.', 'fundadores' ) );
        }

        $name = wp_strip_all_tags( trim( $params['name'] ) );
        $email = wp_strip_all_tags( trim( $params['email'] ) );
        $phone = wp_strip_all_tags( trim( $params['phone'] ) );
        $message = wp_strip_all_tags( trim( $params['message'] ) );

        if ( preg_match( '/^[\p{L} ,.\'-]{2,300}$/i', $name ) !== 1 ) {
            return response( 422, esc_html( 'Nombre no válido.', 'fundadores' ) );
        } elseif ( !filter_var( $email, FILTER_VALIDATE_EMAIL) ) {
            return response( 422, esc_html( 'Correo no válido.', 'fundadores' ) );
        } elseif ( preg_match( '/^[\d\-\+\(\) ]{7,25}$/i', $phone ) !== 1 ) {
            return response( 422, esc_html( 'Número de teléfono no válido.', 'fundadores' ) );
        } elseif ( preg_match( '/^.{20,5000}$/i', $message ) !== 1 ) {
            return response( 422, esc_html( 'Mensaje no válido.', 'fundadores' ) );
        }

        $address = get_option( '_contact_email' );
        if ( empty( $address ) ) {
            $address = get_option( 'admin_email' );
        }
        $subject = esc_html( 'Nuevo mensaje enviado desde ') . $site_name;
        $body = '<p><b>' . esc_html( 'Nombre' ) . ":</b> $name</p>";
        $body .= '<p><b>' . esc_html( 'Correo' ) . ":</b> $email</p>";
        $body .= '<p><b>' . esc_html( 'Teléfono' ) . ":</b> $phone</p>";
        $body .= '<p><b>' . esc_html( 'Mensaje' ) . ":</b> $message</p>";
        $headers = array( 'Content-Type: text/html; charset=UTF-8' );

        if ( wp_mail( $address, $subject, $body, $headers ) ) {
            return response( 200, esc_html( 'Mensaje enviado.', 'fundadores' ) );
        }

        return response( 500, esc_html( 'Mensaje no enviado.', 'fundadores' ) );
    }
    
    add_action( 'rest_api_init', function () {
        register_rest_route( 'contact/v1', '/send', array(
            'methods' => 'POST',
            'callback' => 'sendMail',
            'permission_callback' => '__return_true'
        ) );
    } ) ;

    /**
     * Estilos y scripts.
     */

    // Agrega los estilos y scripts al documento HTML.
    function theme_resources_enqueue() {
        $uri = get_template_directory_uri() . '/assets/';
        wp_enqueue_style( 'fundadores-css', get_stylesheet_uri() );
        wp_enqueue_script( 'fundadores-js', $uri . 'js/theme.js' );
        wp_enqueue_style( 'fa-css', $uri . 'icons/fontawesome/css/fontawesome.css' );
        wp_enqueue_style( 'fa-brands-css', $uri . 'icons/fontawesome/css/brands.css' );
        wp_enqueue_style( 'fa-solid-css', $uri . 'icons/fontawesome/css/solid.css' );
        wp_enqueue_script( 'recaptcha-js', 'https://www.google.com/recaptcha/api.js' );
    }
    
    add_action( 'wp_enqueue_scripts', 'theme_resources_enqueue' );

    // Agrega los estilos y scripts a la página de inicio de sesión.
    function login_resources_enqueue() {
        $uri = get_template_directory_uri() . '/assets/';
        wp_enqueue_style( 'wp-css', $uri . 'css/wp.css' );
        wp_enqueue_script( 'recaptcha-js', 'https://www.google.com/recaptcha/api.js' );
    }

    add_action( 'login_enqueue_scripts', 'login_resources_enqueue' );