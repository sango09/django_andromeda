//Modules
import React, {useState, useEffect} from 'react'
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'jquery'
import 'popper.js'
import '../fontawesome'
import '../assets/styles/index/media.sass'

//Components
import Header from '../components/index/Header'
import Navbar from "../components/index/Navbar";
import Main from "../components/index/Main";
import About from "../components/index/About";
import FeaturesLeft from "../components/index/FeaturesLeft";
import FeatureRight from "../components/index/FeatureRight";
import Contact from "../components/index/Contact";
import Footer from "../components/index/Footer";
import dataFeature from '../components/index/DataFeature'


const Home = () => {
    return (
        <div className="App">
            <Navbar/>
            <Header/>
            <About/>
            <Main>
                <FeaturesLeft feature={dataFeature.feature1} imgUrl={'/static/programming.png'}/>
                <FeatureRight feature={dataFeature.feature2} imgUrl={'/static/data.png'}/>
                <FeaturesLeft feature={dataFeature.feature3} imgUrl={'/static/team.png'}/>
                <FeatureRight feature={dataFeature.feature4} imgUrl={'/static/mobile.png'}/>
            </Main>
            <Contact/>
            <Footer/>
        </div>
    )
}


export default Home
