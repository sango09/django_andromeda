// Modules
import React from 'react'
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'jquery'
import 'popper.js'
import '../fontawesome.js'

//Components
import NavbarLeft from "../components/dashboard/NavbarLeft";
import Main from "../components/dashboard/Main";
import NavbarUp from "../components/dashboard/NavbarUp";
import Languages from "../components/dashboard/Languages";
import Messages from "../components/dashboard/Messages";
import Notification from "../components/dashboard/Notification";
import User from "../components/dashboard/User";
import Footer from "../components/dashboard/Footer";
import Content from "../components/dashboard/Content";

const Dashboard = () => {
    return (
        <div className="wrapper">
            <NavbarLeft/>
            <Main>
                <NavbarUp>
                    <Languages/>
                    <Notification/>
                    <Messages/>
                    <User/>
                </NavbarUp>
                <Content/>
                <Footer/>
            </Main>
        </div>
    )
}

export default Dashboard

