import React from 'react'
import '../../assets/styles/index/footer.sass'

const Footer = () => (
    <footer id="footer" className="pt-5 mt-5 ">
        <div className="container">
            <div className="row d-flex align-items-center">
                <div className="col-lg-6 text-lg-left text-center">
                    <div className="copy">© Copyright <strong>Andromeda</strong> todos los derechos reservados</div>
                </div>
                <div className=" col-md-6 col-lg-6">
                    <nav className="footer-links text-lg-right text-center pt-2 pt-lg-0">
                        <a href="#">Inicio</a>
                        <a href="#">About</a>
                        <a href="#">Politicas de privacidad</a>
                        <a href="#">Términos de uso</a>
                    </nav>
                </div>
            </div>
        </div>
    </footer>
)

export default Footer
