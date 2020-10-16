import {connect} from 'react-redux'
import { createNewUser, removeErrors } from '../../actions/session_action'
import Signup from './signup'

//mSTP
//mDTP
const mapStateToProps = state => ({
    errors: state.errors.session
})

const mapDispatchToProps = dispatch => ({
    createNewUser: formUser => dispatch(createNewUser(formUser)),
    clearErrors: () => dispatch(removeErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(Signup)