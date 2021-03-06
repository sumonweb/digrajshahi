//icheck js
   $(document).ready(function(){

 $('input[type="radio"]').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
});
   // validation js
    $(document).ready(function() {
        $('#tryitForm').bootstrapValidator({
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: 'The name is required and cannot be empty'
                        }
                    }
                },
                country: {
                    validators: {
                        notEmpty: {
                            message: 'The last name is required and cannot be empty'
                        }
                    }
                },
                 address1: {
                    validators: {
                        notEmpty: {
                            message: 'The address is required and cannot be empty'
                        }
                    }
                },
                password: {
                    validators: {

                        notEmpty: {
                            message: 'Please provide a password'
                        }
                    }
                },
                 confirmpassword: {
                validators: {
                    notEmpty: {
                        message: 'The confirm password is required and can\'t be empty'
                    },
                    identical: {
                        field: 'password',
                        message: 'Please enter the same password as above'
                    }
                }
            },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'The email address is required'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                },
                phone: {
                   validators: {
                      notEmpty: {
                            message: 'The phone number is required'
                        }
                }
                },
                jurisdiction_level: {
                   validators: {
                      notEmpty: {
                            message: 'The phone number is required'
                        }
                }
                },
                 terms: {
                validators: {
                    notEmpty: {
                        message: 'You have to accept the terms and policies'
                    }
                }
            },
                gender: {
                    validators: {
                        notEmpty: {
                            message: 'The gender is required'
                        }
                    }
                }
            },
            submitHandler: function(validator, form, submitButton) {
                var fullName = [validator.getFieldElements('firstName').val(),
                    validator.getFieldElements('lastName').val()
                ].join(' ');
                $('#helloModal')
                    .find('.modal-title').html('Hello ' + fullName).end()
                    .modal();
            }
        });
    });

//Select 2 country js

function format(state) {
        if (!state.id) return state.text; // optgroup
        return "<i class='fa fa-user' area-hidden='true'></i> " + state.text;
    }
    $("#select2_sample4").select2({
        placeholder: "Please select",
        allowClear: true,
        formatResult: format,
        formatSelection: format,
        templateResult: format,
        escapeMarkup: function(m) {
            return m;
        }
    });

    function format(state) {
        if (!state.id) return state.text; // optgroup
        return "<i class='fa fa-area-chart' area-hidden='true'></i> " + state.text;
    }
    $("#select2_sample40").select2({
        placeholder: "Please select",
        allowClear: true,
        formatResult: format,
        formatSelection: format,
        templateResult: format,
        escapeMarkup: function(m) {
            return m;
        }
    });

    function format(state) {
        if (!state.id) return state.text; // optgroup
        return "<i class='fa fa-building' area-hidden='true'></i> " + state.text;
    }
    $("#select2_sample50").select2({
        placeholder: "Please select",
        allowClear: true,
        formatResult: format,
        formatSelection: format,
        templateResult: format,
        escapeMarkup: function(m) {
            return m;
        }
    });

    function format(state) {
        if (!state.id) return state.text; // optgroup
        return "<i class='fa fa-building' area-hidden='true'></i> " + state.text;
    }
    $("#select2_sample60").select2({
        placeholder: "Please select",
        allowClear: true,
        formatResult: format,
        formatSelection: format,
        templateResult: format,
        escapeMarkup: function(m) {
            return m;
        }
    });

    function format(state) {
        if (!state.id) return state.text; // optgroup
        return "<i class='fa fa-briefcase' area-hidden='true'></i> " + state.text;
    }
    $("#select2_sample70").select2({
        placeholder: "Please select",
        allowClear: true,
        formatResult: format,
        formatSelection: format,
        templateResult: format,
        escapeMarkup: function(m) {
            return m;
        }
    });

//fade animation js
jQuery(document).ready(function($){
    var $block = $('.cd-block');

    //hide timeline blocks which are outside the viewport
    $block.each(function(){
        if($(this).offset().top > $(window).scrollTop()+$(window).height()*0.75) {
            $(this).find(' .cd-content').addClass('is-hidden');
        }
    });

    //on scolling, show/animate timeline blocks when enter the viewport
    $(window).on('scroll', function(){
        $block.each(function(){
            if( $(this).offset().top <= $(window).scrollTop()+$(window).height()*0.75  ) {
                $(this).find('.cd-content').removeClass('is-hidden').addClass('bounce-in');
            }
        });
    });
});
