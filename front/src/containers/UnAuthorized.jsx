import React from 'react'
import ErrorPath from "../components/ErrorPath"
import Error_401 from '../assets/static/Error/Error_401.png'

const UnAuthorized = () => {
    return (
        <ErrorPath imgError={Error_401}/>
    )
}

export default UnAuthorized
