import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';

const Messages = () => (
    <li className="nav-item dropdown no-arrow mx-1">
        <a className="nav-link userDropdown" href="#" role="button" data-toggle="dropdown"
           aria-haspopup="true"
           aria-expanded="false">
            <FontAwesomeIcon className="fa-fw" icon={['fas', 'envelope']}/>
            <span className="badge badge-danger badge-counter mt-1">7</span>
        </a>
    </li>
)

export default Messages