import React from 'react'
import {Link} from 'react-router-dom'
import '../../assets/styles/index/navbar.sass'

const Navbar = () => (
    <nav className="navbar navbar-expand-lg navbar-light bg-white navbar-sticky" id="navbar">
        <div className="container">
            <Link to="/">
                <a className="navbar-brand">
                    <img src={'/static/logo_azul.png'} alt="Andromeda"/>
                </a>
            </Link>
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
                <Link to="/login">
                    <a className="btn btn-andromeda ml-auto">Iniciar Sesión</a>
                </Link>
            </div>
        </div>
    </nav>
)

export default Navbar
