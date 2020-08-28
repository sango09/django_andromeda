import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';

const NavbarLeft = () => (
    <nav id="sidebar" className="sidebar">
        <a className="sidebar-brand" href="#">
            <img src={'/static/logo.png'} alt="Andromeda"/>
        </a>
        <div className="sidebar-content">
            <ul className="sidebar-nav">
                <li className="sidebar-header">Home</li>
                <li className="sidebar-item active">
                    <a href="#" className="sidebar-link" aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'home']}/>
                        <span className="align-middle">Dashboard</span>
                    </a>
                </li>
                <li className="sidebar-header">Soporte Tecnico</li>
                <li className="sidebar-item">
                    <a href="#request" data-toggle="collapse" className="sidebar-link collapsed" aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'check-square']}/>
                        <span className="align-middle">Solicitudes</span>
                    </a>
                    <ul id="request" className="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                        <li className="sidebar-item">
                            <a className="sidebar-link" href="#">Crear solicitud</a>
                            <a className="sidebar-link" href="#">Control de solicitudes</a>
                        </li>
                    </ul>
                </li>
                <li className="sidebar-item">
                    <a href="#" className="sidebar-link collapsed" aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'clipboard-list']}/>
                        <span className="align-middle">Reportes</span>
                    </a>
                </li>
                <li className="sidebar-header">Calendario</li>
                <li className="sidebar-item">
                    <a href="#" className="sidebar-link" aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'calendar-alt']}/>
                        <span className="align-middle">Calendario</span>
                    </a>
                </li>
                <li className="sidebar-header">Préstamos Tecnologicos</li>
                <li className="sidebar-item">
                    <a href="#prestamo" data-toggle="collapse" className="sidebar-link collapsed" aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'laptop']}/>
                        <span className="align-middle">Préstamos</span>
                    </a>
                    <ul id="prestamo" className="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                        <li className="sidebar-item">
                            <a className="sidebar-link" href="#">Agendar préstamo</a>
                            <a className="sidebar-link" href="#">Control de préstamos</a>
                            <a className="sidebar-link" href="#">Calendario de préstamos</a>
                        </li>
                    </ul>
                </li>
                <li className="sidebar-item">
                    <a href="#" className="sidebar-link collapsed" aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'clipboard-list']}/>
                        <span className="align-middle">Reportes</span>
                    </a>
                </li>
                <li className="sidebar-header">Inventario Tecnologico</li>
                <li className="sidebar-item">
                    <a href="#inventory" data-toggle="collapse" className="sidebar-link collapsed"
                       aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'boxes']}/>
                        <span className="align-middle">Inventario</span>
                    </a>
                    <ul id="inventory" className="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                        <li className="sidebar-item">
                            <a className="sidebar-link" href="#">Gestionar inventario</a>
                            <a className="sidebar-link" href="#">Agregar implemento</a>
                            <a className="sidebar-link" href="#">Consultar inventario</a>
                        </li>
                    </ul>
                </li>
                <li className="sidebar-header">Mantenimiento de equipos</li>
                <li className="sidebar-item">
                    <a href="#maintenance" data-toggle="collapse" className="sidebar-link collapsed"
                       aria-expanded="false">
                        <FontAwesomeIcon icon={['fas', 'tools']}/>
                        <span className="align-middle">Mantenimiento</span>
                    </a>
                    <ul id="maintenance" className="sidebar-dropdown list-unstyled collapse" data-parent="#sidebar">
                        <li className="sidebar-item">
                            <a className="sidebar-link" href="#">Gestionar mantenimientos</a>
                            <a className="sidebar-link" href="#">Agregar mantenimiento</a>
                            <a className="sidebar-link" href="#">Calendario de mantenimientos</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
)

export default NavbarLeft