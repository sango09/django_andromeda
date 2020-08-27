import React from 'react'
import '../assets/styles/Error/error.sass'

const ErrorPath = ({imgError}) => (
    <React.Fragment>
        <div className="col-12 text-center error_image">
            <img src={imgError} alt="Error"/>
        </div>
        <div className="col text-center mt-5">
            <a className="btn btn-andromeda mx-auto" href="#">Volver al inicio</a>
        </div>
    </React.Fragment>
)

export default ErrorPath
