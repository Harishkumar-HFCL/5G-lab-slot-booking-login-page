<html>
    <head>
        <title>Book a slot</title>
        <style>
           body {
               background-image: url(https://t4.ftcdn.net/jpg/01/94/75/73/240_F_194757347_2kcvyt39VHvTyrKPLrh3YnVTOYFnYeeR.jpg);
               background-repeat: no-repeat;
               background-attachment: fixed;
               background-size: cover;
               background-color: #513ef5;
               background-blend-mode: darken;
           }
           .header {
                background-color:#0539f5;
                padding:10px;
                color: #faf7f4;
                font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-size: 30;
                font-weight: bold;
            }
            .tbl_header{                
                padding:10px;
                text-align: right;
                font-size: 25;
                font-weight: bold;
                color:rgb(246, 242, 248);
                position: relative;
                left: 80px;
            }
            .divmenu{
                padding:5px;
                background-color:lightgray;
                text-align:right;
                color: #26133b;
                font-size: 20;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                

            }
            .divmenu a{
                color: rgb(42, 6, 247);
                font-weight: bold;
                margin:10px;
                text-decoration: none;

            }
            input[type="number" i] {
                font-style: oblique;
                border-color: #f1eff7;
                color: #09080c;
                font-weight: bold;
                max-width: 320px;
                width: 400px;
                height: 40px;
                background-color: rgb(77, 247, 253);
                margin: 20px;
                left: 230px;
                padding-bottom: 0 10px;
                border-radius: 55px;
                display: grid;
                grid-template-columns: 15% 85%;
                padding: 0 1rem;
                position: relative;
            }
           
            input[type="text" i] {
                font-style: oblique;
                border-color: #f1eff7;
                color: #09080c;
                font-weight: bold;
                max-width: 320px;
                width: 400px;
                height: 40px;
                background-color: rgb(77, 247, 253);
                margin: 25px 20px;
                border-radius: 55px;
                display: grid;
                grid-template-columns: 15% 85%;
                padding: 0 3rem;
                position: relative;
                
            }
            select {
                font-style: oblique;
                border-color: #f1eff7;
                color: #09080c;
                font-weight: bold;
                max-width: 320px;
                width: 400px;
                height: 40px;
                background-color: rgb(77, 247, 253);
                margin: 25px 20px;
                border-radius: 55px;
                display: grid;
                grid-template-columns: 15% 85%;
                padding: 0 2rem;
                position: relative;
                 
            }
           
            div.b{
                font-style: inherit;
                font-size: 20;
                font-weight: bolder;
                max-width: 180px;
                width: 100%;
                height: 40px;
                background-color: rgb(248, 250, 252);
                margin: 0 60px;
                border-radius: 55px;
                border-color: #211f35;
                grid-template-columns: 50% 50%;
                padding: 0 20px ;
                position: relative;
            }
            div.b:hover, input[type="submit" i]:hover {
                background-color: aqua;
                transform: scale(1.03);
            }
            div.b:active, input[type="submit" i]:active {
                transform: translateY(3px) scale(.97); 
            }
            input[type="submit" i] {
                max-width: 380px;
                font-weight: bolder;
                color: #faf7f4;
                border-color: #f1eff7;
                font-size: medium;
                width: 20%;
                height: 30px;
                background-color: rgb(25, 9, 248);
                margin: 0 480px;
                border-radius: 15px;
                display: grid;
                grid-template-columns: 15% 85%;
                padding: 0 0.4rem;
                position: relative;
            }
            input[type="datetime-local"] {
                font-style: normal;
                border-color: #f1eff7;
                color: #09080c;
                font-weight: bold;
                max-width: 380px;
                width: 180px;
                height: 35px;
                background-color: rgb(245, 250, 250);
                margin:  20px;
                border-radius: 55px;
                display: grid;
                grid-template-columns: 80% 20%;
                padding: 0 0.4rem;
                position: relative;
            }
            
            div.c {
                
                padding: 10px;
                background-color: #f44336;
                margin: 0 20px;
                width: 95%;
                border-radius: 10px;
                position: relative;
                text-shadow: 1px 1px 1px #fa1807,
                             1px 2px 1px #fa1807;
                margin-left: 15px;
                color: white;
                float: left;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;

                }
            .d:hover {
                color: rgb(30, 7, 243);
                
            }    
            
            
        </style>
    </head>
    <body>

        <div class="header">
            Slot Booking
        </div>
        <div class="divmenu">
            <a href="/list">Dashboard</a>
            |
            <a href="/">Logout</a>
        </div>
        {%
            if error != null
        %}
         <tr>
            <div class="c">
            <td colspan="2">
               {{error}}
               <span class="d" onclick="this.parentElement.style.display='none';" style="position: relative; left: 58rem;">&times;</span>
            </td>
            </div>
         </tr>       
        {% endif %}  
        <br/><br/>
        <div align="center">
            <form method="post" action="/bookSlot">
                <table>
                    <tr>
                      <td colspan="2" class="tbl_header">Book a Page</td>
                        
                    </tr>

                    <tr>
                        <td colspan="2">&nbsp;</td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <font color="white" style="font-size: 20; position: relative; left: 180px;">HFCL Employee ID</font>                      
                        <td>
                            <input type="number" name="employee" required/>
                        </td>
                        <tr></tr>
                        <td>
                            <font color="white" style="font-size: 20; ">Department</font>
                            </td>
                        <td>
                            
                            <select name="department" id="services-select" style="position: relative; right: 28px">
                                <option value="Wi-Fi">Wi-Fi</option>
                                <option value="5G">5G</option>
                            </select>

                        </td>
                        <td>
                            <font color="white" style="font-size: 20; position: relative; right: 8px;">Company/Consultant name</font>
                            </td>
                        <td>
                            
                            <select name="company" id="services-select" style="position: relative; right: 8px">
                                <option value="6wind">6wind</option>
                                <option value="athonet">Athonet</option>
                                <option value="intel">Intel</option>
                                <option value="ipinfusion">Ipinfusion</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                      
                        
                    </tr>
                </table>
                
                <table>
                    <tr>
                        
                    </tr>
                    <tr>
                        <td>
                            <font color="white" style="font-size: 20; position: relative; right: 50px;">Resource Request</font>
                        </td>
                        <td>
                            <div class="services-select">
                            <select  name="activity" id="services-select" style="position: relative; right: 100px; width: 150px;" >
                                <option value="8t8r">8T8R</option>
                                <option value="radio-ru">Radio RU</option>
                                <input type="number" name="no_of_items" placeholder="No.Of" style=" position: absolute; left: 440px; margin: 0.1px; width: 100px; top: 418px;" required/>
                            </select>
                            </div>
                            
                        </td>
                        <td>
                            <font color="white" style="font-size: 20;">Reason/ Purpose</font>
                        </td>
                        <td>
                            <input type="text" name="reason" required/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <font color="white" style="font-size: 20; position: relative; right: 80px;">Hybrid/Physical/Virtual Team</font>
                        </td>
                        <td>
                            <input type="text" name="members" style="position: relative; right: 100px;" required/>
                        </td>
                        <td>
                            <font color="white" style="font-size: 20;"> Date of Booking:</font>
                        </td>
                        
                        <td>
                            <input type="datetime-local" id="Start time" name="Start_time" required>
                            <p style="color: white; font-weight: bold; text-align: center; margin-left: 10px; margin-right: 10px; padding-right: 200px; ">TO</p>
                            <input type="datetime-local" id="End time" name="End_time" required>
                        </td>
                               
                        
                       
                        
                    </tr>
                    <tr>
                        <td colspan="4">
                            <input type="submit" value="Save Slot"/>
                        </td>
                    </tr>
                    
        


                </table>
            </form>
        </div>
       
    </body>
</html>
