import {connect} from 'react-redux'
import { login, clearErrors } from '../../actions/session_action'
import Login from './login'


const mapStateToProps = state => ({
    errors: state.errors.login
})

const mapDispatchToProps = dispatch => ({
    login: formUser => dispatch(login(formUser)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(Login)