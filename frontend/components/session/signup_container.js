import {connect} from 'react-redux'
import { createNewUser } from '../../actions/session_action'
import Signup from './signup'

//mSTP
//mDTP

const mapDispatchToProps = dispatch => ({
    createNewUser: formUser => dispatch(createNewUser(formUser))
});

export default connect(null, mapDispatchToProps)(Signup)