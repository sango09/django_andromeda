import React from 'react'
import '../../assets/styles/index/contact.sass'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const Contact = () => (
    <section className="contact mt-5" id="contacto">
        <div className="container">
            <div className="section-title">
                <h2 className="text-center pt-5 pb-5 text-andromeda">Contáctanos</h2>
            </div>

            <div className="row">
                <div className="col-md-6 col-lg-4">
                    <div className="contact-about text-center">
                        <h3 className="text-andromeda mb-3">Síguenos</h3>
                        <div className="iconos mb-3">
                            <a href="#"><FontAwesomeIcon icon={['fab','facebook-f']}/></a>
                            <a href="#"><FontAwesomeIcon icon={['fab','twitter']}/></a>
                            <a href="#"><FontAwesomeIcon icon={['fab','linkedin-in']}/></a>
                            <a href="#"><FontAwesomeIcon icon={['fab','instagram']}/></a>
                            <a href="#"><FontAwesomeIcon icon={['fab','github']}/></a>
                        </div>
                        <p>Programamos con <FontAwesomeIcon className="heart" icon={['far', 'heart']}/></p>
                    </div>
                </div>
                <div className="col-md-6 col-lg-3 mt-4 mt-md-0 ">
                    <div className="info">
                        <div    >
                            <span className="icono"><FontAwesomeIcon icon={['fas','map-marker-alt']}/></span>
                            <span className="pl-3">Calle 72 sur # 14-24</span>
                        </div>
                        <div>
                            <span className="icono"><FontAwesomeIcon icon={['fas','phone-alt']}/></span>
                            <span className="pl-2">+57 3057391845</span>
                        </div>

                        <div>
                            <span className="icono"><FontAwesomeIcon icon={['fas','envelope']}/></span>
                            <span className="pl-2">andromeda@gmail.com</span>
                        </div>
                    </div>
                </div>

                <div className="col-md-12 col-lg-5 pt-3">
                    <form className="needs-validation" name="form" noValidate>
                        <div className="form-group">
                            <input type="text" name="name" className="form-control" id="name"
                                   placeholder="Nombre Completo" required/>
                        </div>
                        <div className="form-group">
                            <input type="email" className="form-control" name="email" id="email"
                                   placeholder="Correo Electronico" required/>
                        </div>
                        <div className="form-group">
                            <input type="text" className="form-control" name="subject" id="subject" placeholder="Asunto"
                                   required/>
                        </div>
                        <div className="form-group">
                            <textarea className="form-control" name="message" placeholder="Mensaje" required/>
                        </div>
                        <div className="text-center">
                            <button className="btn btn-andromeda" type="submit">Enviar mensaje</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
)

export default Contact
