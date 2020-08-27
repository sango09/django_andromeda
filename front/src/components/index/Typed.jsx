import React from 'react'
import Typed from 'typed.js'

class TypedReact extends React.Component {
    componentDidMount() {
        const {strings} = this.props;
        const options = {
            strings: strings,
            backSpeed: 60,
            typeSpeed: 60,
            loop: true,
        };
        // this.el refers to the <span> in the render() method
        this.typed = new Typed(this.el, options);
    }

    render() {
        return (
            <span
                ref={(el) => {
                    this.el = el;
                }}
            />
        )
    }
}

export default TypedReact
