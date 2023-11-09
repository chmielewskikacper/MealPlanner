function test() {
    console.log('test');
}
document.addEventListener("DOMContentLoaded", (event) => {
    const password = document.getElementById('password1');
    var validatePassword = function () {


        // Define the password validation regular expression
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

        // Check if the password matches the regular expression
        if (passwordRegex.test(password.value)) {
            // Password is valid
            document.getElementById('message2').style.color = 'green';
            document.getElementById('message2').innerHTML = 'It is valid';

        } else {
            // Password is invalid
            document.getElementById('message2').style.color = 'red';
            document.getElementById('message2').innerHTML = 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character (@, $, !, %, *, ?, &).';
        }
    }

    var checkPassword = function() {
        if (document.getElementById('password1').value ===
            document.getElementById('password2').value)
        {
            document.getElementById('message').style.color = 'green';
            document.getElementById('message').innerHTML = 'matching';
            return true;
        } else {
            document.getElementById('message').style.color = 'red';
            document.getElementById('message').innerHTML = 'not matching';
            return false;
        }
    }

    var checkEmailAddress  = function () {
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        const email = document.getElementById('email').value;

        if (emailPattern.test(email)) {
            // Password is valid
            document.getElementById('message3').style.color = 'green';
            document.getElementById('message3').innerHTML = 'It is valid';
            return true;
        } else {
            // Password is invalid
            document.getElementById('message3').style.color = 'red';
            document.getElementById('message3').innerHTML = 'email is invalid';
            return false;
        }
    }

    const button = document.querySelector('button');

    var checkSmth = function () {
        if(checkPassword() === true && checkEmailAddress() === true){
            console.log("JESTEM W IF")
            button.setAttribute("disabled", false);
        } else {
            button.setAttribute("disabled", true);
            console.log("jestem w else")
        }
    }
    password.addEventListener('keyup', function() {
        console.log('Wprowadzone hasło:"');
        checkPassword();

    });
});