import React from 'react'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import '../../assets/styles/dashboard/card.sass'


const Card = () => (
    <div className="w-100">
        <div className="row">
            <div className="col-sm-6">
                <div className="card">
                    <div className="card-body">
                        <div className="row row-card">
                            <div className="col mt-0">
                                <h5 className="card-title">Solicitudes Totales</h5>
                            </div>
                            <div className="col-auto">
                                <div className="avatar">
                                    <div className="avatar-title rounded-circle bg-primary-dark">
                                        <FontAwesomeIcon icon={['fas', 'clipboard-list']}/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h1 className="display-5 mt-1 mb-3">300</h1>
                    </div>
                </div>
                <div className="card">
                    <div className="card-body">
                        <div className="row">
                            <div className="col mt-0">
                                <h5 className="card-title text-andromeda">Auxiliares Activos</h5>
                            </div>
                            <div className="col-auto">
                                <div className="avatar">
                                    <div className="avatar-title rounded-circle bg-primary-dark">
                                        <FontAwesomeIcon icon={['fas', 'user-friends']}/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h1 className="display-5 mt-1 mb-3">4</h1>
                    </div>
                </div>
            </div>
            <div className="col-sm-6">
                <div className="card">
                    <div className="card-body">
                        <div className="row">
                            <div className="col mt-0">
                                <h5 className="card-title">Solicitudes Completadas</h5>
                            </div>
                            <div className="col-auto">
                                <div className="avatar">
                                    <div className="avatar-title rounded-circle bg-primary-dark">
                                        <FontAwesomeIcon icon={['fas', 'clipboard-check']}/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h1 className="display-5 mt-1 mb-3">250</h1>
                    </div>
                </div>
                <div className="card">
                    <div className="card-body">
                        <div className="row">
                            <div className="col mt-0">
                                <h5 className="card-title">Solicitudes Pendientes</h5>
                            </div>
                            <div className="col-auto">
                                <div className="avatar">
                                    <div className="avatar-title rounded-circle bg-primary-dark">
                                        <FontAwesomeIcon icon={['fas', 'edit']}/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h1 className="display-5 mt-1 mb-3">50</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

)

export default Card
