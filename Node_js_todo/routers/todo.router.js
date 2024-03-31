const router = require("express").Router();
const ToDoController = require('../controller/todo.controller')
router.post("/storeToDo",ToDoController.createToDo);
router.post('/getUserToDoList', ToDoController.getToDoList);
router.post('/deleteToDo', ToDoController.deleteToDo);
module.exports = router;