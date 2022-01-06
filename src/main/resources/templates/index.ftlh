<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Organizer</title>
    <link rel="stylesheet" type="text/css" href="/css/style.x99444.css"/>
</head>
<body>
<h1>Organizer</h1>
<h3>Add task to list</h3>
<form action="/add" method="post">
    <table border="1px">
        <tr>
            <td>
                <label>Priority</label>
                <input type="number" name="priorityId">
            </td>
            <td>
                <label>Description</label>
                <input type="text" name="description">
            </td>

            <td>
                <input type="submit" value="add task">
            </td>

        </tr>

    </table>
</form>
<br>
<h2>Task list(task count : ${taskSize})</h2>
<table border="1px">
    <tr>
        <td>Id</td>
        <td>Priority</td>
        <td>Task description</td>
        <td>Date</td>
        <td>Delete from list</td>
    </tr>
    <#list taskList as task>
    <tr>
        <td>${task.id}</td>
        <td>${task.priorityId}</td>
        <td>${task.description}</td>
        <td><a href="${'/delete/'+task.id}"">Delete</a></td>
    </tr>
</#list>
</table>
</body>
</html>