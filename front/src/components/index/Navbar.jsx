import React from 'react'
import '../../assets/styles/index/navbar.sass'

const Navbar = () => (
    <nav className="navbar navbar-expand-lg navbar-light bg-white navbar-sticky" id="navbar">
        <div className="container">
            <a className="navbar-brand" href="#">
                <img src={'/static/logo_azul.png'} alt="Andromeda"/>
            </a>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"/>
            </button>
            <div className="collapse navbar-collapse" id="navContent">
                <ul className="navbar-nav ml-auto">
                    <li className="navbar-item active">
                        <a className="nav-link" href="#home">Home</a>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link" href="#nosotros">Nosotros</a>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link" href="#funciones">Funcionalidades</a>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link" href="#contacto">Contáctanos</a>
                    </li>
                </ul>
                <a className="btn btn-andromeda ml-auto" href="#">Iniciar Sesión</a>
            </div>
        </div>
    </nav>
)

export default Navbar
