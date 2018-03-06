$(document).ready(function() {
                $('#meu_form').validate({
                    rules: {
                        nome: {
                            required: true,
                            minlength: 3
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        conf_email: {
                            required: true,
                            equalTo: "#email"
                        },
                        senha: {
                            required: true
                        },
                        conf_senha: {
                            required: true,
                            equalTo: "#senha"
                        },
                    },
                    messages: {
                        nome: {
                            required: "Required.",
                            minlength: "Minimum 3 characters."
                        },
                        email: {
                            required: "Required.",
                            email: "Type a valid email."
                        },
                        conf_email: {
                            required: "Required.",
                            equalTo: "Must be the same email."
                        },
                        senha: {
                            required: "Required."
                        },
                        conf_senha: {
                            required: "Required.",
                            equalTo: "Must be the same password."
                        },

                    }

                });
            });
       
function calcular(){
    var n1 = parseInt(document.getElementById('pesoi').value, 10);
    var n2 = parseInt(document.getElementById('metai').value, 10);
    document.getElementById('resultado').innerHTML = n1 - n2;   
} 
