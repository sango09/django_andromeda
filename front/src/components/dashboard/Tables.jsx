import React from 'react'
import CardAction from "./CardAction";

const Tables = () => (
    <div className="col-12 col-lg-8 col-xxl-9 d-flex">
        <div className="card flex-fill">
            <div className="card-header">
                <CardAction/>
                <h5 className="card-title mb-0">Ultimas Solicitudes</h5>
            </div>
            <div id="datatables-dashboard-wrapper" className="table-responsive-md">
                <div className="row">
                    <div className="col-sm-12 col-md-6"/>
                    <div className="col-sm-12 col-md-6"/>
                </div>
                <div className="row">
                    <div className="col-sm-12">
                        <table id="datatables-dashboard"
                               className="table table-striped my-0 table-hover card-title">
                            <thead>
                            <tr scope="row md-3">
                                <th>Nombre</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Final</th>
                                <th>Estado</th>
                                <th>Auxiliar Asignado</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr scope="row">
                                <td>Carl Jenkins</td>
                                <td>01/06/2020</td>
                                <td>01/06/2020</td>
                                <td><span className="badge badge-success">Completado</span>
                                </td>
                                <td>Juan Pablo Ardila
                                </td>
                            </tr>
                            <tr scope="row">
                                <td>Bertha Martin</td>
                                <td>01/06/2020</td>
                                <td>01/06/2020</td>
                                <td><span className="badge badge-danger">Cancelado</span>
                                </td>
                                <td>Santiago Vargas</td>
                            </tr>
                            <tr scope="row">
                                <td>Stacie Hall</td>
                                <td>01/06/2020</td>
                                <td>01/06/2020</td>
                                <td><span className="badge badge-success">Compleado</span>
                                </td>
                                <td>Sebastian Ordoñez
                                </td>
                            </tr>
                            <tr scope="row">
                                <td>Carl Jenkins</td>
                                <td>01/06/2020</td>
                                <td>01/06/2020</td>
                                <td><span className="badge badge-warning">En progreso</span>
                                </td>
                                <td>Juan Pablo Ardila
                                </td>
                            </tr>
                            <tr scope="row">
                                <td>Bertha Martin</td>
                                <td>01/06/2020</td>
                                <td>01/06/2020</td>
                                <td><span className="badge badge-danger">Cancelado</span>
                                </td>
                                <td>Santiago Gomez</td>
                            </tr>
                            <tr scope="row">
                                <td>Ashley Briggs</td>
                                <td>01/06/2020</td>
                                <td>01/06/2020</td>
                                <td><span className="badge badge-success">Completado</span>
                                </td>
                                <td>Sebastian Ordoñez
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
)

export default Tables