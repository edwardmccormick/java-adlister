<%--
  Created by IntelliJ IDEA.
  User: mccormicksk
  Date: 3/8/21
  Time: 12:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>

<form method="post" action="pizza-order">
    <select name="crust">
        <option value="thin">Thin</option>
        <option selected value="medium">Medium</option>
        <option value="deepdish">Deep Dish</option>
    </select>

    <select class="custom-select my-1 mr-sm-2" id="SauceType" name="sauce">
        <!--                            <option selected>Choose...</option>-->
        <option selected value="robust">Robust Inspired Tomato Sauce</option>
        <option value="alfredo">Alfredo</option>
        <option value="barbecue">Barbecue</option>
    </select>

    <select name="size" id="size">
        <option value="small">Small (10")</option>
        <option value="medium">Medium (12")</option>
        <option value="large" selected>Large (14")</option>
    </select>

    <ul class="list-group list-group-flush">
        <li class="list-group-item">Choose meats:</li>
    </ul>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="beef" id="beef" name="beef">
        <label class="form-check-label" for="beef">
            Beef
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="ham" id="ham">
        <label class="form-check-label" for="ham">
            Ham
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="steak" id="steak">
        <label class="form-check-label" for="steak">
            Philly Steak
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="bacon" id="bacon">
        <label class="form-check-label" for="bacon">
            Bacon
        </label>
    </div>


    </div>




    <div class="card bg-light mb-3 w-100" style="width: 18rem;">
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Choose Non-Meats:</li>
        </ul>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="peppers" id="peppers">
            <label class="form-check-label" for="peppers">
                Green Peppers
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="mushrooms" id="mushrooms">
            <label class="form-check-label" for="mushrooms">
                Mushrooms
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="onions" id="onions">
            <label class="form-check-label" for="onions">
                Onions
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="jalapeno" id="jalapeno">
            <label class="form-check-label" for="jalapeno">
                Jalapeno Peppers
            </label>
        </div>
    </div>
    <button>Submit</button>
</form>

<p>Pizza crust is: ${crust}.</p>
<p>Sauce type is: ${sauce}.</p>
<p>Beef is : ${beef}.</p>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

</body>
</html>