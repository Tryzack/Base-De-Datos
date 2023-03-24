const { Pool } = require('pg');

const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    port: '5433',
    password: 'joseandres10',
    database: 'restaurante_bd',
});

const getClientes = async (req, res) =>{
    const response = await pool.query('select *from cliente');
    res.status(200).json(response.rows);
};

const getClientesbyID = async (req, res) => {
    const response = await pool.query('Select *from cliente where id_cliente = $1', [req.params.id]);
    res.json(response.rows);
};

const getMeseros = async (req, res ) => {
    const response = await pool.query('select *from mesero');
    res.status(200).json(response.rows);
};

const getMeserosbyID = async (req, res) => {
    const response = await pool.query('Select *from mesero where id_mesero = $1', [req.params.id]);
    res.json(response.rows);
};

const getSupervisores = async (req, res ) => {
    const response = await pool.query('select *from supervisor');
    res.status(200).json(response.rows);
};

const getSupervisoresbyID = async (req, res) => {
    const response = await pool.query('Select *from supervisor where id_supervisor = $1', [req.params.id]);
    res.json(response.rows);
};

const getFactura = async (req, res) =>{
    const response = await pool.query('select *from factura');
    console.log(response.rows);
    res.status(200).json(response.rows);
};

const createFactura = async (req, res) => {
    const {id_cliente, nromesa, id_mesero, fecha} = req.body;
    const response = await pool.query('INSERT INTO factura (id_cliente, nromesa, id_mesero, fecha) VALUES ($1, $2, $3, $4)', [id_cliente, nromesa, id_mesero, fecha]);
    console.log(response);
    res.json({
        message: 'Factura agregada correctanmente',
        body: {
            factura:{id_cliente, nromesa, id_mesero, fecha}
        }
    });
};

module.exports = {
    getClientes, createFactura, getFactura, getClientesbyID, getMeseros, getMeserosbyID, getSupervisores, getSupervisoresbyID
};