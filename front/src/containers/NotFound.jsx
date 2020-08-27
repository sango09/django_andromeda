import React from 'react'
import ErrorPath from "../components/ErrorPath"
import Error_404 from '../assets/static/Error/Error_404.png'

const NotFound = () => {
    return (
        <ErrorPath imgError={Error_404}/>
    )
}

export default NotFound
