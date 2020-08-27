import React from 'react'
import PropTypes from 'prop-types'

const FeatureRight = (props) => (
    <div className="row mt-5">
        <div className="col-md-6 order-1 order-md-2 image-index text-center">
            <img src={props.imgUrl} alt="image"/>
        </div>
        <div className="col-md-6 order-2 order-md-1 pt-5">
            <div className="ml-5">
                <h3>{props.feature.title}</h3>
                <p>{props.feature.paragraph}</p>
            </div>
        </div>
    </div>
)

export default FeatureRight
