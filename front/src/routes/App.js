//Modules
import React from 'react'
import {BrowserRouter, Switch, Route} from "react-router-dom"

//Components
import Home from "../containers/Home"
import Login from "../containers/Login"
import Register from "../containers/Register"
import NotFound from "../containers/NotFound"
import ErrorServer from "../containers/ErrorServer"
import UnAuthorized from "../containers/UnAuthorized"
import Dashboard from "../containers/Dashboard";
import '../assets/styles/app.sass'
import Layout from "../components/dashboard/Layout";

const App = () => (
    <BrowserRouter>
        <Switch>
            <Route exact path="/" component={Home}/>
            <Route exact path="/login" component={Login}/>
            <Route exact path="/register" component={Register}/>
            <Layout>
                <Route exact path="/administrator" component={Dashboard}/>
            </Layout>
            <Route component={NotFound}/>
        </Switch>
    </BrowserRouter>
)
export default App
