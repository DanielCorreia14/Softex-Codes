import request from 'request';

const app = express();
app.get('/listar/50', (req, res) => {
    request({
      url: 'https://jsonplaceholder.typicode.com/users'
      json: true 
    }, (error, response, body) => {
        res.send('HTTP 404')
    });
app.get('/listar/10', (req, res) => {
    request({
      url: 'https://jsonplaceholder.typicode.com/users'
      json: true 
    }, (error, response, body) => {
        res.send('HTTP 200')
        res.send('Requisição bem sucedida')
    });
});
app.listen(3000, () => {
 console.log("Servidor OK");
})
