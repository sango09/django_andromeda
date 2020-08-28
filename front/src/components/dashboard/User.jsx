import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'

const User = () => (
    <li className="nav-item dropdown no-arrow">
        <a className="nav-link dropdown-toggle userDropdown" href="#" role="button" data-toggle="dropdown"
           aria-haspopup="false" aria-expanded="false">
					<span className="account-user-avatar rounded-circle">
						<img
                            src="https://lh3.googleusercontent.com/ogw/ADGmqu--wOsPaeFjuMvZdmZsvhD9xMjhkjePYFM2e7P1=s192-c-mo"
                            alt="Avatar"/>
					</span>
        </a>
        <div className="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="userDropdown">
            <h5 className="dropdown-header text-center">Bienvenido</h5>
            <div className="dropdown-divider"/>
            <a className="dropdown-item" href="#">
                <FontAwesomeIcon icon={['fas', 'user']}/>
                <span className="align-middle">Perfil</span>
            </a>
            <a className="dropdown-item" href="#">
                <FontAwesomeIcon icon={['fas', 'comments']}/>
                <span className="align-middle">Chats</span>
            </a>
            <a className="dropdown-item" href="#">
                <FontAwesomeIcon icon={['fas', 'chart-pie']}/>
                <span className="align-middle">Reporte</span>
            </a>
            <a className="dropdown-item" href="#">
                <FontAwesomeIcon icon={['fas', 'cogs']}/>
                <span className="align-middle">Configuración</span>
            </a>
            <div className="dropdown-divider"/>
            <a className="dropdown-item text-danger" href="#">
                <FontAwesomeIcon icon={['fas', 'arrow-alt-circle-right']}/>
                <span className="align-middle">Cerrar Sesión</span>
            </a>
        </div>
    </li>
)

export default User
