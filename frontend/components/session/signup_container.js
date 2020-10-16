import {connect} from 'react-redux'
import { createNewUser } from '../../actions/session_action'
import Signup from './signup'

//mSTP
//mDTP
const mapStateToProps = state => ({
    errors: state.errors.session
})

const mapDispatchToProps = dispatch => ({
    createNewUser: formUser => dispatch(createNewUser(formUser))
});

export default connect(mapStateToProps, mapDispatchToProps)(Signup)