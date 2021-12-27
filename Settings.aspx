<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>מכונת הדובונים- הגדרות משחק</title>
    <link rel="shortcut icon" type="image/png" href="images/GameIcon.png" />
    <link href="styles/StyleSheet1.css" rel="stylesheet" />
    <%--scrips--%>
    <script src="jscrips/jquery-1.12.0.min.js"></script>
    <script src="jscrips/JavaScript.js"></script>
    <style type="text/css">
        .CharacterCount {
        }
    </style>
    <!--הקוד שמפעיל את תפריט הניווט-->

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <!--קישור לדף עצמו כדי להתחיל את המשחק מחדש בלחיצה על הלוגו-->
                <a href="login.aspx">
                    <img id="logo" src="images/GameIcon.png" />
                    <p>מכונת הדובונים</p>
                </a>
                <!--תפריט הניווט בראש העמוד-->
                <nav>
                    <ul>
                        <li><a class="about">אודות</a></li>
                        <li><a href="index.html">למשחק</a></li>
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

            <div  id="settingDiv" class="centerDes">
            <h3 class="titleq">הגדרות משחק</h3>
            <br />
            <asp:Label ID="Label2" runat="server" Text="שם המשחק (2-50 תווים)"></asp:Label>
            <br />
            <asp:TextBox ID="GameNameEdit" runat="server" item="8" CharacterLimit="50" CssClass="CharacterCount"></asp:TextBox>
             <asp:Label ID="LabelCounter8" runat="server" Text="0/50"></asp:Label>
            <br />
                <asp:Label ID="Label3" runat="server" Text="הגדרת זמן לכל שאלה"></asp:Label>
            <br />
            <asp:DropDownList ID="TimeList" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="SaveMovetoEdit" CssClass="DisButtons" runat="server" Text="שמור ועבור לעריכת תוכן" OnClick="SaveMovetoEdit_Click" />
                <br />
                <br />
            <asp:Button ID="SaveMovetoGames" CssClass="DisButtons" runat="server" Text="שמור" OnClick="SaveMovetoGames_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="CancelMovetoGames" CssClass="DisButtons" runat="server" Text="בטל" OnClick="CancelMovetoGames_Click" />
                </div>
        </div>
    </form>
</body>
</html>
