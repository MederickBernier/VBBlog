<%
    Title = "Login Form"
    Logo = "LF"
%>
<!--#include file=includes/header.asp-->
        <div class="container">
            <div class="row">
                <h3>Login Form</h3>
                <!-- Login Form to be constructed here. -->
                <form method="POST" action="login.asp" class="col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <input placeholder="Username" id="username" name="username" type="text" class="validate">
                            <label for="username">Username</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input placeholder="Password" id="password" name="password" type="password" class="validate">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <button class="btn waves-effect waves-light green darken-2" type="submit">
                        <span>Login</span>
                        <i class="material-icons right"> login</i>
                    </button>
                    </div>
                </form>
            </div>
        </div>
<!--#include file=includes/footer.asp-->