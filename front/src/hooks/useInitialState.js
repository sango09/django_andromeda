import { useState, useEffect } from 'react'

const useInitialState = (API) => {
    const [ features , setFeatures] = useState([])

    useEffect(() => {
        fetch(API)
            .then(response => response.json())
            .then(data => setFeatures(data))
    }, [])

    return features
}

export default useInitialState
