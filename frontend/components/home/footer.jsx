import React from 'React'

class Footer extends React.Component {
    render(){
        return (
            <div className='footer'>
                <div className="footer-column1">
                    <h2 className="aboutme">About Me</h2>
                    <a href="https://www.linkedin.com/in/praneethch/">LinkedIn</a>
                    <br></br>
                    <a href="https://github.com/pchandu/">Github</a>
                    <br></br>
                    <a href="">Website</a>
                    <br></br>
                    <a href="">Email</a>
                    <br></br>
                </div>
                
                <div className="footer-column2">
                    <h2>Books</h2>
                    <a href="">Best Seller</a>
                    <br></br>
                    <a href="">2020 Favorite</a>
                    <br></br>
                    <a href="">Classic</a>
                    <br></br>
                    <a href="">Developer's Choice</a>
                    <br></br>
                </div>
            </div>
        )
    }
}

export default Footer