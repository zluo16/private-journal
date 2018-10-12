import axios from 'axios'
import { setHeaders } from './headers';

export default class AuthAdapter {
  static login(loginParams) {
    setHeaders();
    return axios.post('/login', loginParams)
    .then(res => res.json());
  };

  static signup(signupParams) {
    setHeaders();
    return axios.post('/signup', signupParams)
    .then(res => res.json());
  };
};
