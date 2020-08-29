import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';

const NavbarTop = ({children}) => (
    <nav className="navbar navbar-expand">
        <a className="sidebar-toggle d-flex mr-2">
            <FontAwesomeIcon className="align-self-center" icon={['fas', 'bars']} />
        </a>
        <form className="form-inline d-none d-sm-inline-block">
            <input className="form-control" type="text" placeholder="Buscar..."/>
        </form>
        <div className="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul className="navbar-nav ml-auto">
                {children}
            </ul>
        </div>
    </nav>
)

export default NavbarTop