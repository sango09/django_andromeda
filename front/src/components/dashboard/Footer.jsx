import React from 'react'

const Footer = () => (
    <footer className="footer">
        <div className="container-fluid">
            <div className="row text-muted">
                <div className="col-8 text-left">
                    <ul className="list-inline">
                        <li className="list-inline-item">
                            <a className="text-muted" href="#">Soporte</a>
                        </li>
                        <li className="list-inline-item">
                            <a className="text-muted" href="#">Privacidad</a>
                        </li>
                        <li className="list-inline-item">
                            <a className="text-muted" href="#">Términos y Condiciones</a>
                        </li>
                        <li className="list-inline-item">
                            <a className="text-muted" href="#">Contacto</a>
                        </li>
                    </ul>
                </div>
                <div className="col-4 text-right">
                    <p className="mb-0">
                        © 2020 - <a href="#" className="text-muted">Andromeda</a>
                    </p>
                </div>
            </div>
        </div>

    </footer>
)

export default Footer