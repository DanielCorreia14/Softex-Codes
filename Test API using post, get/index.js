const { response } = require("express");
const express = require("express");

const app = express();
const projects = [];
app.use(express.json());
app.get("/project",(request,response)=>{
    return response.json(projects);

});
app.get("/", (request,response)=>{
    return response.send("Nome: Daniel, Cidade: Petrolina, Curso: CC");

});

app.post('/project', (request,response)=>{
    const{ name , language }= request.body;
    const project={
        name,
        language
    }
    projects.push(project);
    return response.status(201).json(project);
});


//localhost:8080
app.listen(8080);

