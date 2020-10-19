import React from 'react'

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
                    <a href="praneethchandu@gmail.com">Email</a>
                    <br></br>
                </div>
                
                <div className="footer-column2">
                    <h2>Books</h2>
                    <a href="https://www.amazon.com/Meditations-New-Translation-Marcus-Aurelius/dp/0812968255/ref=zg_bs_468230_1?_encoding=UTF8&psc=1&refRID=Y7R5RMKGKSSDW8FGGAP6">
                        Best Seller</a>
                    <br></br>
                    <a href="https://www.amazon.com/dp/1328663817?tag=fivebooks001-20">
                        2020 Favorite</a>
                    <br></br>
                    <a href="https://www.amazon.com/Guns-Germs-Steel-Fates-Societies/dp/0393317552">Classic</a>
                    <br></br>
                    <a href="https://www.amazon.com/Sapiens-Humankind-Yuval-Noah-Harari/dp/0062316095">Developer's Choice</a>
                    <br></br>
                </div>
            </div>
        )
    }
}

export default Footer