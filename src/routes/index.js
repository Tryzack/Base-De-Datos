const { Router } = require('express');
const router = Router();
const {getClientes, createFactura, getFactura, getClientesbyID, getMeseros, getMeserosbyID, getSupervisores, getSupervisoresbyID} = require('../controllers/index.controller')

router.get('/clientes', getClientes);
router.get('/clientes/:id', getClientesbyID);
router.get('/meseros', getMeseros);
router.get('/meseros/:id', getMeserosbyID);
router.get('/supervisores', getSupervisores);
router.get('/supervisores/:id', getSupervisoresbyID)
router.get('/registrar_factura', getFactura);
router.post('/registrar_factura', createFactura);

module.exports = router;