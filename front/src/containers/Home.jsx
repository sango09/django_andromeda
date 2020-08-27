//Modules
import React, {useState, useEffect} from 'react'
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'jquery'
import 'popper.js'
import '../fontawesome'

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
                <FeaturesLeft feature={dataFeature.feature1}/>
                <FeatureRight feature={dataFeature.feature2}/>
                <FeaturesLeft feature={dataFeature.feature3}/>
                <FeatureRight feature={dataFeature.feature4}/>
            </Main>
            <Contact/>
            <Footer/>
        </div>
    )
}


export default Home
