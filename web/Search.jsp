<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Online Library: Search Book</title>
        <link href="Book.ico" rel="shortcut icon"/>
        <link href="Profile.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="jquery-2.1.1.js"></script>
    </head>
    <body body style="background-image:url(5074157.jpg);background-repeat:no-repeat;background-size:100%;">
             <% String user = session.getAttribute("username").toString();
               String stat = session.getAttribute("status").toString();
            %>
        <ul id="menu">
        <li><a href="Home.jsp">Home</a></li>
        
        <li><a href="Search.jsp">Search</a></li>
        <li>
            <a href="#">Books</a>
            <ul>
                <li><a href="IssuedBooks.jsp">Issue Books</a></li>
            </ul>
        </li>
        <li><a href="#">Contact</a></li>
        <% 
               if(stat.equals("Admin")){
        %>
        <li>
            <a href="#">Admin Panel</a>
            <ul>
                <li>
                    <a href="AddBooks.jsp">Add Book</a>
                </li>
                <li>
                    <a href="DeleteBooks.jsp">Delete Book</a>
                </li>
                <li>
                    <a href="AllMembers.jsp">All Members</a>
                </li>
            </ul>
        </li>
        <%
               }
        %>
        <li>
            <a href="#">Profile</a>
        <ul>
            <li><a href="Myprofile.jsp">My Profile</a></li>
            <li><a href="UpdateProfile.jsp">Update Profile</a></li>
            <li><a href="DeleteProfile.jsp">Delete Account</a></li>
            <li><a href="LogOut.jsp">Logout</a></li>
        </ul>
        </li>
        </ul>
        
        
        
        <div><h2>Book Display:~</h2></div>
        <form name="f1" method="post" action="ShowBooks.jsp">
            Select an option to sort the details:~
            <select name="booksearch" id="sel" required>
                <option value="">Select</option>
                <option value="BOOKS_NAME">Search By Book's Name</option>
                <option value="AUTHOR">Group By Author</option>
                <option value="GENRE">Group By Genre</option>
                
            </select>
            <br><br><input type="text" id="other" style="display: none;" name="t1" size=50 placeholder="Eg: Harry Potter And The Chamber Of Secrets" ><br>
            <input type="Submit" value="Submit"> <input type="Reset">
        </form>
        <script type="text/javascript">
            $('#sel').change(function() 
            {
                $('#other').css('display', ($(this).val() === 'BOOKS_NAME') ? 'block' : 'none');
            });
        </script>
    </body>
</html>
