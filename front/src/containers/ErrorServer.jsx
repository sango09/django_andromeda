import React from 'react'
import ErrorPath from "../components/ErrorPath"
import Error_500 from '../assets/static/Error/Error_500.png'

const ErrorServer = () => {
    return (
        <ErrorPath imgError={Error_500}/>

    )
}

export default ErrorServer
