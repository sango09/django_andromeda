import React from 'react'
import Analytics from "./Analytics";
import Card from "./Card";
import Tables from "./Tables";

const Content = () => (
    <main className="content">
        <div className="container-fluid">
            <div className="header">
                <h1 className="header-title">¡Bienvenido, Julian!</h1>
                <p className="header-subtitle">Tienes 7 mensajes nuevos y 5 notificaciones nuevas.</p>
            </div>
            <div className="row row-content">
                <div className="col-xl-6 col-xxl-7">
                    <Analytics/>
                </div>
                <div className="col-xl-6 d-flex">
                    <Card/>
                </div>
            </div>
            <div className="row mt-4">
                <Tables/>
            </div>
        </div>
    </main>
)

export default Content