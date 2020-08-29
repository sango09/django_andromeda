import React from 'react'
import {Link} from 'react-router-dom'

const Register = () => (
    <section className="container-fluid ">
        <div className="row">
            <div className="col brand-andromeda">
                <img src={'/static/logo_azul.png'} alt="Logo Andromeda"/>
                <form className="col col-md-10 offset-md-1 col-lg-8 offset-lg-2 pt-3 needs-validation" name="form"
                      noValidate>
                    <div className="form-group text-andromeda">
                        <label htmlFor="FullName">Nombre completo</label>
                        <input type="text" className="form-control" name="Name" id="FullName"
                               placeholder="Ingrese el nombre completo" required/>
                    </div>
                    <div className="form-group text-andromeda">
                        <label htmlFor="Email">Correo Electronico</label>
                        <input type="email" className="form-control" name="Email" id="Email" aria-describedby="email"
                               placeholder="Ingresa tu correo electrónico" required/>
                        <small id="emailHelp" className="form-text text-muted">
                            ¡Nunca compartas tu correo electrónico!
                        </small>
                    </div>
                    <div className="form-group text-andromeda">
                        <label htmlFor="password">Contraseña</label>
                        <input type="password" className="form-control" name="password" id="password"
                               placeholder="Contraseña" required/>
                    </div>
                    <div className="form-group text-andromeda">
                        <label htmlFor="passwordRepeat">Confirmar contraseña</label>
                        <input type="password" className="form-control" name="passwordRepeat" id="passwordRepeat"
                               placeholder="Confirmar contraseña" required/>
                    </div>
                    <div className="form-group">
                        <label htmlFor="inputState">Area de desempeño</label>
                        <select id="inputState" className="form-control" required>
                            <option selected>Profesor</option>
                            <option>Administrativo</option>
                        </select>
                    </div>
                    <div className="form-group pb-3">
                        <div className="form-check">
                            <input className="form-check-input" type="checkbox" value="" id="invalidCheck" required/>
                            <label className="form-check-label" htmlFor="invalidCheck">
                                Acepto Términos de Servicio y Politicas de Privacidad
                            </label>
                            <div className="invalid-feedback"> Debes aceptar los Terminos y Condiciones</div>
                        </div>
                    </div>
                    <button type="submit" className="btn btn-andromeda mt-2 mx-auto btn-block">Crear mi cuenta</button>
                </form>
                <div className="abajo text-center mt-3 ">
                    <span className="text-muted">¿Ya tienes una cuenta? </span>
                    <Link to="/login">
                        <a className="text-andromeda">Inicia tu Sesión</a>
                    </Link>
                </div>
            </div>
            <div className="d-none d-md-block col-12 col-md col-lg-6 d-md-block" id="image__register"
                 style={{
                     background: 'url(/static/cgb6.jpeg)',
                     backgroundSize: "cover",
                     height: "100vh"
                 }}
            />
        </div>
    </section>
)

export default Register
