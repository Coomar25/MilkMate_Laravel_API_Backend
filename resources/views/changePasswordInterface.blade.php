<html>

<head>
    <title>

    </title>

    <style>
        form {
            widows: 500px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        form .row {
            padding: 1rem;
            margin: 1rem;
        }

        form label {
            margin: 1rem;
        }
    </style>
</head>

<body>
    <form method="POSt" action="">
        @csrf

        <input type="hidden" name="id" value="{{ $id }}">
        <div class="row g-3 align-items-center ">
            <div class="col-auto">
                <label for="inputPassword6" class="col-form-label">Password</label>
            </div>
            <div class="col-auto">
                <input type="password" name="password" id="inputPassword6" class="form-control"
                    aria-labelledby="passwordHelpInline">
            </div>
            <div class="col-auto">
                <span id="passwordHelpInline" class="form-text">
                    Must be 8-20 characters long.
                </span>
            </div>
        </div>


        <div class="row g-3 align-items-center">
            <div class="col-auto">
                <label for="inputPassword7" class="col-form-label">Confirm Password</label>
            </div>
            <div class="col-auto">
                <input type="password" name="password_confirmation" id="inputPassword7" class="form-control"
                    aria-labelledby="passwordHelpInline">
            </div>
            <div class="col-auto">
                <span id="passwordHelpInline" class="form-text">
                    Must be 8-20 characters long.
                </span>
            </div>
        </div>

        <button type="submit">Submit</button>
    </form>
</body>

</html>
