$(document).ready(function () {//כאשר העמוד נטען


    //תגדיר לתוך משתנים את האורך והרוחב של החלון
    var windowsW = $(document).width();
    var windowsH = $(document).height();

    //תגדיר ערכים אלה לפאנל של החלון האפור
    //יגרום לכך שהחלון האפור תמיד יהיה בגודל של החלון שלנו
    $("#grayWindows").css("width", windowsW);
    $("#grayWindows").css("height", windowsH);

    $(".about").click(function () {
        $("#aboutDiv").toggle();
    });

    $(".howToPlay").click(function () {
        $("#howToPlayDiv").toggle();
    });

    $(".closeAbout").click(function () {
        $("#aboutDiv").hide();
        $("#gameIframe")[0].contentWindow.focus();
    });

    $(".closeHowToPlay").click(function () {
        $("#howToPlayDiv").hide();
        $("#gameIframe")[0].contentWindow.focus();
    });


    $(".tooltip").mouseover(function () {
        if ($("span", this).hasClass('disabled')) {
            $(".tooltiptext", this).css("display", "block");
        }
    });
    $(".tooltip").mouseleave(function () {
        $(".tooltiptext", this).css("display", "none");
    });

    //תעבור על כל אלמנט שיש לו את הקלאס הזה       
    $(".disabled").each(function (e) {

        //תגדיר לו שיהיה לא מאופשר              
        $(this).find("input").attr("disabled", true);

        //תבטל את תיבת הסימון במידה ויש              
        $(this).find("input").attr("checked", false);

    });


    //תעבור על כל אלמנט שיש לו את הקלאס הזה       
    $(".disabled").each(function (e) {

        //תגדיר לו שיהיה לא מאופשר              
        $(this).find("input").attr("disabled", true);
        //תבטל את תיבת הסימון במידה ויש              
        $(this).find("input").attr("checked", false);
    });

    //בהקלדה בתיבת הטקסט
    $(".CharacterCount").keyup(function () {
        checkCharacter($(this)); //קריאה לפונקציה שבודקת את מספר התווים
    });

    //בהקלדה בתיבת הטקסט
    $(".CharacterCount").load(function () {
        checkCharacter($(this)); //קריאה לפונקציה שבודקת את מספר התווים
    });

    //בהעתקה של תוכן לתיבת הטקסט
    $(".CharacterCount").on("paste", function () {
        checkCharacter($(this));//קריאה לפונקציה שבודקת את מספר התווים
    });



    //פונקציה שמקבלת את תיבת הטקסט שבה מקלידים ובודקת את מספר התווים
    function checkCharacter(myTextBox) {

        //משתנה למספר התווים הנוכחי בתיבת הטקסט
        var countCurrentC = myTextBox.val().length;

        //משתנה המקבל את מספר תיבת הטקסט 
        var itemNumber = myTextBox.attr("item");

        //משתנה המכיל את מספר התווים שמוגבל לתיבה זו
        var CharacterLimitNum = myTextBox.attr("CharacterLimit");

        //בדיקה האם ישנה חריגה במספר התווים
        if (countCurrentC > CharacterLimitNum) {

            //מחיקת התווים המיותרים בתיבה
            myTextBox.val(myTextBox.val().substring(0, CharacterLimitNum));
            //עדכון של מספר התווים הנוכחי
            countCurrentC = CharacterLimitNum;

        }

        //הדפסה כמה תווים הוקלדו מתוך כמה
        $("#LabelCounter" + itemNumber).text(countCurrentC + "/" + CharacterLimitNum);

    }

    
        //להעלאת תמונות כאשר יש שינוי בupload
        $("#fileInput").change(function () {

            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ShowPic0').attr('src', e.target.result);
                    $('#ShowPic0').css('visibility', 'visible');
                    $('#ShowPic0').css('width', '50px');
                    $('#picQimg').css('visibility', 'hidden');
                    $('#ShowPic0').css('height', '50px');
                }
                reader.readAsDataURL(this.files[0]);
            }
        });


        $("#fileInput2").change(function () {

            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ShowPic1').attr('src', e.target.result);
                    $('#ShowPic1').css('visibility', 'visible');
                    $('#pic0').css('visibility', 'hidden');
                    $('#ShowPic1').css('width', '50px');
                    $('#ShowPic1').css('height', '50px');
                }
                reader.readAsDataURL(this.files[0]);
            }
        });

        $("#fileInput3").change(function () {

            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ShowPic2').attr('src', e.target.result);
                    $('#ShowPic2').css('visibility', 'visible');
                    $('#pic1').css('visibility', 'hidden');
                    $('#ShowPic2').css('width', '50px');
                    $('#ShowPic2').css('height', '50px');
                }
                reader.readAsDataURL(this.files[0]);
            }
        });

        $("#fileInput4").change(function () {

            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ShowPic3').attr('src', e.target.result);
                    $('#ShowPic3').css('visibility', 'visible');
                    $('#pic2').css('visibility', 'hidden');
                    $('#ShowPic3').css('width', '50px');
                    $('#ShowPic3').css('height', '50px');
                }
                reader.readAsDataURL(this.files[0]);
            }
        });


        $("#fileInput5").change(function () {

            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ShowPic4').attr('src', e.target.result);
                    $('#ShowPic4').css('visibility', 'visible');
                    $('#pic3').css('visibility', 'hidden');
                    $('#ShowPic4').css('width', '50px');
                    $('#ShowPic4').css('height', '50px');
                }
                reader.readAsDataURL(this.files[0]);
            }
        });



    });