import React from 'react'
import '../../assets/styles/index/main.sass'

const Main = ({children}) => (
    <main className="features pt-10 pt-md-12" id="funciones">
        <div className="container ">
            <div className="section-title text-andromeda text-center">
                <h2>Las funcionalidades de Andromeda</h2>
            </div>
            {children}
        </div>
    </main>
)

export default Main
