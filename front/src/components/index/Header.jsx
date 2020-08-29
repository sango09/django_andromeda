import React from 'react'
import '../../assets/styles/index/header.sass'
import TypedReact from "./Typed.jsx";

const Header = () => (
    <header className="main-header pt-5 pt-md-11 mb-5" id="home">
        <div className="container">
            <div className="row align-content-center">
                <div className="col-12 col-md-5 col-lg-6 order-md-2 text-center">
                    <img src={'/static/img1.png'} alt="image"
                         className="img-fluid  mb-6 mb-md-0 animated"/>
                </div>
                <div className="col-12 col-md-7 col-lg-6 order-md-1 mt-5">
                    <h1 className="text-center text-md-left display-3 typed-react">
                        <TypedReact strings={['Bienvenido a ', 'Welcome to']}/>
                    </h1>
                    <h1 className="text-andromeda text-center text-md-left display-3">Andromeda</h1>
                    <p className="text-muted text-center text-md-left mb-6 mb-lg-8">Sistema de información desarrollado
                        para los departamentos tecnológicos de las instituciones educativas.</p>
                    <div className="text-center text-md-left">
                        <a className="btn btn-outline-primary ml-auto contact" href="#contacto">Contáctanos</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
)


export default Header
