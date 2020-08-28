import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';

const CardAction = () => (
    <div className="card-actions float-right">
        <a href="#" className="mr-1">
            <FontAwesomeIcon icon={['fas', 'sync']}/>
        </a>
        <div className="d-inline-block dropdown show">
            <a href="#" data-toggle="dropdown" data-display="static">
                <FontAwesomeIcon icon={['fas', 'ellipsis-v']}/>
            </a>
            <div className="dropdown-menu dropdown-menu-right">
                <a className="dropdown-item" href="#">Solicitudes</a>
                <a className="dropdown-item" href="#">Reporte</a>
                <a className="dropdown-item" href="#">Ocultar</a>
            </div>
        </div>
    </div>
)

export default CardAction