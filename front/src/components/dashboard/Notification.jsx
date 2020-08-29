import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';

const Notification = () => (
    <li className="nav-item dropdown no-arrow mx-1">
        <a className="nav-link userDropdown" href="#" role="button" data-toggle="dropdown"
           aria-haspopup="true" aria-expanded="false">
            <FontAwesomeIcon className='fa-fw' icon={['fas', 'bell']}/>
            <span className="badge badge-danger badge-counter mt-1">3+</span>
            <div className="dropdown-menu dropdown-menu-right dropdown-lg" aria-labelledby="messages">
                <h5 className="dropdown-header text-center">Ultimos Mensajes</h5>
                <div className="dropdown-divider"/>
                <a className="dropdown-item" href="#">
                    <div className="notify-icon rounded-circle">
                        <img src={'/static/coordinador.jpg'} alt="notify-icon"/>
                    </div>
                    <p className="notify-details">Robert Spark</p>
                    <p className="message text-muted mb-0">
                        <small>Ha solicitado un nuevo préstamo</small>
                    </p>
                </a>
                <a className="dropdown-item" href="#">
                    <div className="notify-icon rounded-circle">
                        <img src={'/static/employee2.jpg'} alt="notify-icon"/>
                    </div>
                    <p className="notify-details">Andrea Matheous</p>
                    <p className="message text-muted mb-0">
                        <small>Canceló el servicio</small>
                    </p>
                </a>
                <a className="dropdown-item" href="#">
                    <div className="notify-icon rounded-circle">
                        <img src={'/static/auxiliar1.jpeg'} alt="notify-icon"/>
                    </div>
                    <p className="notify-details">Juan Pablo</p>
                    <p className="message text-muted mb-0">
                        <small>Completo un soporte técnico</small>
                    </p>
                </a>
            </div>
        </a>
    </li>
)

export default Notification