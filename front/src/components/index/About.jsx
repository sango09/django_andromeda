import React from 'react'
import '../../assets/styles/index/main.sass'

const About = () => (
    <section className="pt-8 pt-md-11 bg-us" id="nosotros">
        <div className="container">
            <div className="row align-items-center">
                <div className="mt-5 col-12 col-md-7 col-lg-6">
                    <h2 className="mb-3 text-center">¿Qué es <span className="text-andromeda">Andromeda?</span></h2>
                    <p className="text-muted">Andromeda es un sistema de información que permite agilizar la resolución
                        de incidencias, mejorar el nivel de satisfacción de sus usuarios y mantener un máximo control en la
                        operatividad de sus servicios.</p>
                </div>
                <div className="col-12 col-md-5 col-lg-6">
                    <div className="position-relative">
                        <div className="img-dashboard">
                            <img src={'/static/dashboard.png'} className="screenshot img-fluid"
                                 alt="Dashboard"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
)

export default About


