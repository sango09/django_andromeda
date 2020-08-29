//Modules
import React from 'react'

//Components
import NavbarLeft from "./NavbarLeft";
import NavbarTop from "./NavbarTop";
import Footer from "./Footer";
import Main from "./Main";
import Languages from "./Languages";
import Notification from "./Notification";
import Messages from "./Messages";
import User from "./User";

const Layout = ({children}) => (
    <div className="wrapper">
        <NavbarLeft/>
        <Main>
            <NavbarTop>
                <Languages/>
                <Notification/>
                <Messages/>
                <User/>
            </NavbarTop>
            {children}
            <Footer/>
        </Main>
    </div>
)

export default Layout