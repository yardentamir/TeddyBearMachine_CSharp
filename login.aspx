<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מכונת הדובונים- כניסת עורך</title>
    <script src="jscrips/jquery-1.12.0.min.js"></script>
    <link href="styles/StyleSheet1.css" rel="stylesheet" />
        <script type="text/javascript">
        function changeButtonStatus() {
            if (document.getElementById('<% = UserTXT.ClientID %>').value.length >= 1 &&
                document.getElementById('<% = PWTXT.ClientID %>').value.length >= 1)
            {
                document.getElementById('<% = EnterBtn.ClientID %>').disabled = false;
            }
            else
            {
                document.getElementById('<% = EnterBtn.ClientID %>').disabled = true;
            }

        }
    </script>
    <script src="jscrips/JavaScript.js"></script>
        <script src="jscrips/myScript.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 86px;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <header>
                <!--קישור לדף עצמו כדי להתחיל את המשחק מחדש בלחיצה על הלוגו-->
                <a href="index.aspx">
                    <img id="logo" src="images/GameIcon.png" />
                    <p>מכונת הדובונים</p>
                </a>
                <!--תפריט הניווט בראש העמוד-->
                <nav>
                    <ul>
                        <li><a class="about">אודות</a></li>
                        <li><a href="index.aspx">למשחק</a></li>
                    </ul>
                </nav>
            </header>
                        <div id="aboutDiv" class="popUp bounceInDown hide">
 <a class="closeAbout">X</a>
                <h1>אודות</h1>
            <img id="about1" src="images/GameIcon.png" />
                <div id="meUpAbout">
                <h2>מכונת הדובונים</h2>
                <h3>אפיון ופיתוח: עמית מילר וירדן טמיר</h3>
                <p>אופיין ופותח במסגרת פרויקט בקורסים:
                    <br />
סביבות לימוד אינטראקטיביות 2 +  תכנות 2 + תכנות אינטראקטיבי 2
תשע"ט </p>
                <p><a href="https://www.hit.ac.il/telem/overview"> הפקולטה לטכנולוגיות למידה </a></p>
                <p>מכון טכנולוגי חולון</p>
                <img src="images/hitlogo.jpg" />
                    </div>
        </div>
        <div id="howToPlayDiv" class="popUp bounceInDown hide">
            <a class="closeHowToPlay">X</a>
            <img id="howPlay" src="images/howplay.png" />
        </div>
            <div class="centerDes">
                <table>
                    <tr>
                        <th colspan="3" class="auto-style4"><h2>כניסת עורך</h2></th>
                    </tr>
                    <tr>
                        <th class="auto-style1"><asp:Label ID="Label1" runat="server" Text="שם משתמש:" Font-Size="Large"></asp:Label></th>
                        <th class="auto-style1"><asp:TextBox ID="UserTXT" runat="server" onkeyup="changeButtonStatus()" Height="20"></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th><asp:Label ID="Label2" runat="server" Text="סיסמא:" Font-Size="Large"></asp:Label></th>
                        <th> <asp:TextBox ID="PWTXT" runat="server" TextMode="Password" onkeyup="changeButtonStatus()" Height="20"></asp:TextBox></th>
                    </tr>
                    <tr>
                        <th colspan="3" class="auto-style2"><asp:Button ID="EnterBtn" runat="server" CssClass="DisButtons" Enabled="false" Text="כניסה" OnClick="EnterBtn_Click" Font-Size="22px" Height="34px" Width="80px"/></th>
                    </tr>
                    <tr>
                        <th colspan="3" class="auto-style5"><asp:Label ID="Message" runat="server" Text=""></asp:Label></th>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>
