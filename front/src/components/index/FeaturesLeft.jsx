import React from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';


const FeaturesLeft = (props) => (
    <div className="row mt-lg-5">
        <div className="col-md-6 image-index text-center">
            <img src={props.imgUrl} alt="image"/>
        </div>
        <div className="col-md-6 pt-5">
            <div className="ml-5">
                <h3>{props.feature.title}</h3>
                <p>{props.feature.paragraph}</p>
                <ul>
                    <li><FontAwesomeIcon icon={['fas', 'check']}/>{props.feature.firstPoint}</li>
                    <li><FontAwesomeIcon icon={['fas', 'check']}/>{props.feature.secondPoint}</li>
                    <li><FontAwesomeIcon icon={['fas', 'check']}/>{props.feature.thirdPoint}</li>
                </ul>
            </div>
        </div>
    </div>
)

export default FeaturesLeft
