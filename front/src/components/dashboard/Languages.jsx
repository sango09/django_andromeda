import React from 'react'

const Languages = () => (
    <li className="nav-item dropdown">
        <a className="nav-link" id="flagDropdown" href="#" role="button" data-toggle="dropdown"
           aria-haspopup="false" aria-expanded="false">
					<span className="flags-icon">
						<img src={'/static/spain.jpg'} alt="Spanish"/>
					</span>
            <span className="align-middle d-none d-sm-inline-block text-light">Español</span>
        </a>
        <div className="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="flagDropdown">
            <a className="dropdown-item flags-icon" href="#">
                <img src={'/static/us.jpg'} alt="English"/>
                <span className="align-middle mr-1 ">Ingles</span></a>
        </div>
    </li>

)

export default Languages