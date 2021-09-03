<jsp:include page="/header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" %>



<title>User Create</title>

<div class="content-section">
    <form action="UserCreate" method="POST">
        <fieldset class="form-group">
            <legend class="border-bottom mb-4">User Create</legend>

            <div id="div_id_first_name" class="form-group">
                <label for="id_first_name" class=" requiredField">
                    First name
                    <span class="asteriskField">*</span>
                </label>
                <input type="text" name="first_name" maxlength="100" class="textInput form-control" required
                       id="id_first_name">
            </div>

            <div id="div_id_last_name" class="form-group">
                <label for="id_last_name" class=" requiredField">
                    Last name
                    <span class="asteriskField">*</span>
                </label>
                <input type="text" name="last_name" maxlength="100"
                       class="textInput form-control" required id="id_last_name">
            </div>

            <div id="div_id_email" class="form-group">
                <label for="id_email" class=" requiredField">
                    Email
                    <span class="asteriskField">*</span>
                </label>
                <input type="email" name="email" maxlength="254" autofocus class="emailinput form-control"
                       required id="id_email">
            </div>

            <div id="div_id_tlf" class="form-group">
                <label for="id_tlf" class=" requiredField">
                    Tlf
                    <span class="asteriskField">*</span>
                </label>
                <input type="number" name="tlf" maxlength="254" autofocus class="emailinput form-control"
                       required id="id_tlf">

            </div>

            <div id="div_id_password1" class="form-group">
                <label for="id_password1" class=" requiredField">
                    Password
                    <span class="asteriskField">*</span>
                </label>
                <input type="password" name="password1" autocomplete="new-password"
                       class="textInput form-control" required id="id_password1"
                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}">
                <small id="hint_id_password1" class="form-text text-muted">
                    <ul>
                        <li>Your password can’t be too similar to your other personal information.</li>
                        <li>Your password must contain at least 8 characters.</li>
                        <li>Your password can’t be a commonly used password.</li>
                        <li>Your password can’t be entirely numeric.</li>
                    </ul>
                </small>
            </div>

            <div id="div_id_password2" class="form-group">
                <label for="id_password2" class=" requiredField">
                    Password confirmation
                    <span class="asteriskField">*</span>
                </label>
                <input type="password" name="password2" autocomplete="new-password"
                       class="textInput form-control" required id="id_password2"
                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}">
                <small id="hint_id_password2" class="form-text text-muted">Enter the same password as before, for
                    verification.</small>
            </div>


            <div class="text-center">
                <button class="button-primary" type="submit">Create</button>
            </div>

        </fieldset>
    </form>
</div>

<jsp:include page="/footer.jsp"/>
