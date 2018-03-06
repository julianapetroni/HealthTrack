
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
                        nsenha: {
                            required: true
                        },
                        conf_senha: {
                            required: true,
                            equalTo: "#senha"
                        },
                    },
                    messages: {
                        nome: {
                            required: "O campo nome é obrigatorio.",
                            minlength: "O campo nome deve conter no mínimo 3 caracteres."
                        },
                        email: {
                            required: "O campo email é obrigatorio.",
                            email: "O campo email deve conter um email válido."
                        },
                        conf_email: {
                            required: "O campo confirmação de email é obrigatorio.",
                            equalTo: "O campo confirmação de email deve ser identico ao campo email."
                        },
                        senha: {
                            required: "O campo senha é obrigatorio."
                        },
                        nsenha: {
                            required: "O campo senha é obrigatorio."
                        },
                        conf_senha: {
                            required: "O campo confirmação de senha é obrigatorio.",
                            equalTo: "O campo confirmação de senha deve ser identico ao campo senha."
                        },

                    }

                });
            });
       
function calcular(){
    var n1 = parseInt(document.getElementById('pesoi').value, 10);
    var n2 = parseInt(document.getElementById('metai').value, 10);
    document.getElementById('resultado').innerHTML = n1 - n2;   
} 

function deleteRow(r) {
                                        var i = r.parentNode.parentNode.rowIndex;
                                        document.getElementById("table").deleteRow(i);
                                    }
