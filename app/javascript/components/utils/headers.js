import axios from 'axios';

export function setCSRF() {
  const csrfToken = document.querySelector("meta[name=csrf-token]").content;
  axios.defaults.headers.common['X-CSRF-Token'] = csrfToken;
};

export function setHeaders() {
  setCSRF();
  axios.defaults.headers.common['Authorization'] = localStorage.getItem('token');
};
