document.addEventListener('DOMContentLoaded', function () {
    /**
     * Fija o desfija la barra barra de navegación al desplazarse.
     */
    let lastScrollY = 0;
    const topbarElem = document.querySelector("#topbar");
    document.addEventListener('scroll', ()  => {
        topbarElem.classList.toggle('unsticked', window.scrollY > lastScrollY);
        lastScrollY = window.scrollY;

        //Oculta el icono animado "hacia abajo" de la cabecera.
        const scrollDownIcon = document.querySelector('#header .scroll-down-icon');
        if (scrollDownIcon) {
           scrollDownIcon.classList.toggle('hidden', window.scrollY > 0);
        }
    });

    /**
     * Redimensiona el alto de los textareas de acuerdo al contenido.
     */
    const txtElems = document.querySelectorAll('textarea');
    if (txtElems) {
        txtElems.forEach(elem => {
            elem.addEventListener('keyup', function () {
                this.style.height = 0;
                this.style.height = this.scrollHeight + 'px';
            });
        });
    }

    /**
     * Muestra u oculta el menú lateral en la versión móvil.
     */
    function toggleMenu () {
        document.body.classList.toggle('sideout-menu-opened');
    }

    document.querySelector('.sideout-menu-toggle')
        .addEventListener('click', (e) => {
            toggleMenu();
            e.stopPropagation();
        });

    document.querySelector('#sideout-menu')
        .addEventListener('click', (e) => {
            e.stopPropagation();
        });

    document.querySelector('.menu-close')
        .addEventListener('click', (e) => {
            toggleMenu();
        });
    
    document.body.addEventListener('click', function () {
        if (this.classList.contains('sideout-menu-opened')) {
            toggleMenu();
        }
    });

    /**
     * Realiza y gestiona las peticiones del formulario de contacto.
     */
    const contactForm = document.querySelector('.contact-form form');

    // Muestra el estado de la petición.
    function setContactFormStatus(statusClassName = null, statusMessage = '') {
        const statusElem = contactForm.querySelector('.status');
        statusElem.classList.remove('sending', 'success', 'error');
        if (statusClassName) {
            statusElem.classList.add(statusClassName);
        }
        statusElem.textContent = statusMessage;
    }

    // Desactiva el formulario de contacto.
    function disableContactForm() {
        contactForm.querySelectorAll('input, textarea').forEach(elem => {
            elem.disabled = elem.disabled ? false : true;
        });
    }

    if (contactForm) {
        contactForm.addEventListener('submit', (e) => {
            const data = new FormData(contactForm);

            data.append('g-recaptcha-response', grecaptcha.getResponse());    
            setContactFormStatus('sending', 'Enviando...');
            disableContactForm();
            
            // Gestiona la petición HTTP.
            fetch('/wp-json/contact/v1/send', {
                method: 'POST',
                body: data
            })
            .then(response => {
                return response.json();
            })
            .then(data => {
                if (data.status >= 400) {
                    setContactFormStatus('error', data.message);
                } else {
                    setContactFormStatus('success', data.message);
                    setTimeout(() => {
                        setContactFormStatus();
                    }, 5000);
                    contactForm.reset();
                }
            })
            .catch(() => {
                setContactFormStatus('error', 'Error inesperado.');
            })
            .finally(() => {
                grecaptcha.reset();
                disableContactForm();
            });
            
            e.preventDefault();
        });
    }

    /**
     * Reinicia el reCAPTCHA al publicar un comentario.
     */
    const commentForm = document.querySelector('#commentform');

    if (commentForm) {
        function observeReCaptcha() {
            setTimeout(() => {
                if (localStorage.getItem('commentFormSubmitted')) {
                    if (grecaptcha.getResponse()) {
                        grecaptcha.reset();
                    }
                    localStorage.removeItem('commentFormSubmitted');
                } else {
                    observeReCaptcha();
                }
            }, 1000);
        }

        commentForm.addEventListener('submit', () => {
            localStorage.setItem('commentFormSubmitted', 1);
            observeReCaptcha();
        });
    }

    /**
     * Establece las acciones de los botones compartir.
     */
    const shareBtns = document.querySelector('.post-share');

    if (shareBtns) {
        const postUrl = document.querySelector('link[rel="canonical"]').href;
        
        shareBtns.querySelector('.btn-facebook').addEventListener('click', () => {
            location.href = 'https://www.facebook.com/sharer/sharer.php?u=' + postUrl;
        });

        shareBtns.querySelector('.btn-whatsapp').addEventListener('click', () => {
            location.href = 'https://api.whatsapp.com/send?text=' + postUrl;
        });

        shareBtns.querySelector('.btn-print').addEventListener('click', () => {
            print();
        });
    }
});