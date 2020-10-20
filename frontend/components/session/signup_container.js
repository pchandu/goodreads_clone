import {connect} from 'react-redux'
import { createNewUser, clearErrors } from '../../actions/session_action'
import Signup from './signup'

//mSTP
//mDTP
const mapStateToProps = state => ({
    errors: state.errors.signup,
    currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
    createNewUser: formUser => dispatch(createNewUser(formUser)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(Signup)