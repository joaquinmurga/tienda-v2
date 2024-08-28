import express from 'express';
import dotenv from 'dotenv';
import sequelize from './config.js';
import cors from 'cors';

dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());


sequelize.sync().then(() => {
    app.listen(3001, () => {
        console.log("Servidor de RRHH abierto en puerto: 3001");
    });
}).catch(err => {
    console.log('Unable to connect to database RRHH: ', err);
});
