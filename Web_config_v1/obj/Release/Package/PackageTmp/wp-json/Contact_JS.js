jQuery(document).ready(function ($) {
    function isEmail(emailStr) {
        var emailPat = /^(.+)@(.+)$/
        var specialChars = "\\(\\)<>@,;:\\\\\\\"\\.\\[\\]"
        var validChars = "\[^\\s" + specialChars + "\]"
        var quotedUser = "(\"[^\"]*\")"
        var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/
        var atom = validChars + '+'
        var word = "(" + atom + "|" + quotedUser + ")"
        var userPat = new RegExp("^" + word + "(\\." + word + ")*$")
        var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$")
        var matchArray = emailStr.match(emailPat)
        if (matchArray == null) {
            return false
        }
        var user = matchArray[1]
        var domain = matchArray[2]

        // See if "user" is valid
        if (user.match(userPat) == null) {
            return false
        }
        var IPArray = domain.match(ipDomainPat)
        if (IPArray != null) {
            // this is an IP address
            for (var i = 1; i <= 4; i++) {
                if (IPArray[i] > 255) {
                    return false
                }
            }
            return true
        }
        var domainArray = domain.match(domainPat)
        if (domainArray == null) {
            return false
        }

        var atomPat = new RegExp(atom, "g")
        var domArr = domain.match(atomPat)
        var len = domArr.length

        if (domArr[domArr.length - 1].length < 2 ||
            domArr[domArr.length - 1].length > 3) {
            return false
        }

        // Make sure there's a host name preceding the domain.
        if (len < 2) {
            return false
        }

        // If we've gotten this far, everything's valid!
        return true;
    }

    //  autocomplete off
    $("input[type='text']").attr('autocomplete', 'off');

    //kiểm tra chỉ nhập số
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }

    $("#sendSubmit").click(function () {
        var flag = true;
        $(".error").remove();
        var Object = {
            Inputname: $("#Inputname").val(),
            InputEmail: $("#InputEmail").val(),
            Inputphone: $("#Inputphone").val(),
            Inputnote: $("#Inputnote").val()
        }

        $.each(Object, function (key, item) {
            if (key == "Inputnote") {
                if (item.length < 15) {
                    var html = "<span class='error'>Ghi chú ít nhất 15 ký tự.</span>";
                    $("#Inputnote").parent().append(html);
                    flag = false;
                }
            }
            if (key == "InputEmail") {
                if (!isEmail(item)) {
                    var html = "<span class='error'> Bạn nhập email chưa đúng</span>";
                    $("#InputEmail").parent().append(html);
                    flag = false;
                }
            }
            else if (item == "") {
                var html = "<span class='error'> Trường này bắt buộc nhập</span>";
                $("#" + key).parent().append(html);
                flag = false;
            }
        });

        if (flag == true) {
            $.ajax({
                url: '/Contact/Save_contact',
                type: 'Post',
                data: Object,
                datatype: 'json',
                success: function (data) {
                    if (data == 1 || data == 0) {
                        if (data == 1) {
                            $.toast({
                                heading: 'Thông báo',
                                text: 'Bạn gửi đăng ký cho chúng tôi',
                                icon: 'info',
                                position: 'bottom-left',
                                stack: false
                            });
                            $.each(Object, function (key, item) {
                                $("#" + key).val("");
                            });
                            var html = "<div class='error' style='padding-bottom: 10px;font-weight: 700;'> Bạn đã đăng ký thành công, Chúng tôi liên hệ sớm cho bạn</div>";
                            $("#Inputname").before(html);
                            flag = true;

                        }
                        else {

                            flag = false;
                        }
                    }
                    else {
                        flag = false;
                    }
                },
                error: function (err) {
                    alert("Error:" + err.responseText);
                }
            });
        }

        return flag;

    });

    $("#sendSubmitEN").click(function () {
        var flag = true;
        $(".error").remove();
        var Object = {
            Inputname: $("#Inputname").val(),
            InputEmail: $("#InputEmail").val(),
            Inputphone: $("#Inputphone").val(),
            Inputnote: $("#Inputnote").val()
        }

        $.each(Object, function (key, item) {
            if (key == "Inputnote") {
                if (item.length < 15) {
                    var html = "<span class='error'>Note at least 15 characters.</span>";
                    $("#Inputnote").parent().append(html);
                    flag = false;
                }
            }
            if (key == "InputEmail") {
                if (!isEmail(item)) {
                    var html = "<span class='error'> Your email incorrect</span>";
                    $("#InputEmail").parent().append(html);
                    flag = false;
                }
            }
            else if (item == "") {
                var html = "<span class='error'> field is required to enter</span>";
                $("#" + key).parent().append(html);
                flag = false;
            }
        });

        if (flag == true) {
            $.ajax({
                url: '/Contact/Save_contact',
                type: 'Post',
                data: Object,
                datatype: 'json',
                success: function (data) {
                    if (data == 1 || data == 0) {
                        if (data == 1) {
                            $.toast({
                                heading: 'Infomatin',
                                text: 'You send register to our',
                                icon: 'info',
                                position: 'bottom-left',
                                stack: false
                            });
                            $.each(Object, function (key, item) {
                                $("#" + key).val("");
                            });
                            var html = "<div class='error' style='padding-bottom: 10px;font-weight: 700;'> You sent register successfull, we will contact soon</div>";
                            $("#Inputname").before(html);
                            flag = true;

                        }
                        else {

                            flag = false;
                        }
                    }
                    else {
                        flag = false;
                    }
                },
                error: function (err) {
                    alert("Error:" + err.responseText);
                }
            });
        }

        return flag;

    });
});
//kiểm tra Email
