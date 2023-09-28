<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/State/Demo_stateDashboard1.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,400,500,600" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="main-section">
           
            <div class="dashbord">
                <div class="icon-section">
                    <i class="fa fa-users" aria-hidden="true"></i>      <br>
                    <big>Add Information</big><br>
                    <small>Covid Cases</small><br><br>
                </div>
                <div class="detail-section">
                    <a href="JSP/State/State_InsertData.jsp">Add Info</a>
                </div>
            </div>
            
            <div class="dashbord dashbord-green">
                <div class="icon-section">
                    <i class="fa fa-refresh" aria-hidden="true"></i>    <br>
                    <big>Update Information</big><br>
                    <small>About Covid</small><br><br>
                </div>
                <div class="detail-section">
                    <a href="JSP/State/State_UpdateData.jsp">Update Case</a>
                </div>
            </div>

            <div class="dashbord dashbord-orange">
                <div class="icon-section">
                    <i class="fa fa-trash" aria-hidden="true"></i><br>
                    <big>Delete Information</big><br>
                    <small>Covid</small><br><br>
                </div>
                <div class="detail-section">
                    <a href="JSP/State/State_DeleteData.jsp">Delete Case</a>
                </div>
            </div>

            <div class="dashbord dashbord-skyblue">
                <div class="icon-section">
                    <i class="fa fa-database" aria-hidden="true"></i><br>
                    <big>View Information</big><br>
                    <small>Own State</small><br><br>
                </div>
                <div class="detail-section">
                    <a href="JSP/State/State_View_OwnState.jsp">Own State</a>
                </div>
            </div>


            <div class="dashbord dashbord-blue">
                <div class="icon-section">
                    <i class="fa fa-tasks" aria-hidden="true"></i><br>
                    <big>View Information</big><br>
                    <small>All State</small><br><br>
                </div>
                <div class="detail-section">
                    <a href="JSP/State/State_View_AllState.jsp">All State </a>
                </div>
            </div>

            <div class="dashbord dashbord-red">
                <div class="icon-section">
                    <!--<i class="fa-solid fa-download"></i><br>-->
                    <i class="fa fa-download" aria-hidden="true"></i><br>
                    <big>Download Covid Case Data</big><br>
                    <small>PDF Format </small><br><br>
                </div>
                <div class="detail-section">
                    <a href="#">Download PDF</a>
                </div>
            </div>
        </div>
    </body>