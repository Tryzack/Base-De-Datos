const { Client } = require("pg");

const obtenerCategorias = async () => {



    const client = new Client({
        user: "postgres",
        host: "localhost",
        database: "restaurante_bd",
        password: 'joseandres10',
        port: 5433,
    });

    await client.connect();
    
    const res = await client.query("SELECT *from cliente");
    const result = res.rows;
    await client.end();
    
    return result;
};

obtenerCategorias().then((result)  => {
    console.log(result);
});