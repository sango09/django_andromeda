import React from 'react'
import {Link} from 'react-router-dom'

const Login = () => (
    <section className="container-fluid ">
        <div className="row">
            <div className="d-none d-md-block col-12 col-md col-lg-6 d-md-block" id="image__login"
                 style={{
                     backgroundImage: 'url(/static/cgb5.png)',
                     backgroundSize: "cover",
                     height: "100vh"
                 }}
            />
            <div className="col pt-5 brand-andromeda">
                <img src={'/static/logo_azul.png'} alt="Logo Andromeda"/>
                <form className="col col-md-10 offset-md-1 col-lg-8 offset-lg-2 pt-3 needs-validation" noValidate>
                    <div className="form-group text-andromeda">
                        <label htmlFor="InputEmail">Correo electrónico</label>
                        <input type="email" className="form-control" id="InputEmail" aria-describedby="emailHelp"
                               placeholder="Ingrese el correo electronico" required/>
                        <small id="email" className="form-text text-muted">
                            ¡Nunca compartas tú correo electrónico!</small>
                    </div>
                    <div className="form-group text-andromeda">
                        <label htmlFor="InputPassword">Contraseña</label>
                        <input type="password" className="form-control" id="InputPassword" placeholder="Contraseña"
                               required/>
                    </div>
                    <div className="form-check text-andromeda">
                        <input type="checkbox" className="form-check-input" id="Check1"/>
                        <label className="form-check-label" htmlFor="Check1">Recordarme</label>
                    </div>
                    <Link to="/administrator" className="text-decoration-none">
                        <button type="submit" className="btn btn-andromeda mt-2 btn-block">Ingresar</button>
                    </Link>

                </form>
                <div className="abajo text-center mt-3 ">
                    <Link to="/login">
                        <a className="text-andromeda">¿Olvidaste tu contraseña?</a>
                    </Link>
                </div>
                <div className="boton text-center pt-3">
                    <span className="text-muted">¿Aún no tienes cuenta? </span>
                    <Link to="/register">
                        <a className="text-andromeda">Registrate</a>
                    </Link>
                </div>
            </div>
        </div>
    </section>
)

export default Login
