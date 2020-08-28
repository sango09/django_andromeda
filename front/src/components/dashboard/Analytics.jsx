import React from 'react'
import CardAction from "./CardAction";

const Analytics = () => (
    <div className="card flex-fill w-100">
        <div className="card-header">
            <CardAction/>
            <h5 className="card-title mb-0 text-andromeda">Análisis de servicios prestados por auxiliares</h5>
        </div>
        <div className="card-body py-3">
            <div className="chart chart-sm">
                <div className="chartjs-size-monitor">
                    <div className="chartjs-size-monitor-expand">
                        <div className=""/>
                    </div>
                    <div className="chartjs-size-monitor-shrink">
                        <div className=""/>
                    </div>
                </div>
                <div className="monitor-analitics">
                    <hr/>
                        <canvas id="analisis"/>
                </div>
            </div>
        </div>
    </div>
)

export default Analytics