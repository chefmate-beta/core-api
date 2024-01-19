import express from 'express';

const app = express();
const port = 5042;

app.get('/', (req, res) => {
  res.send('Hello world, this is Chef Mate!');
});

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});