import { pool } from './database.js';

class ProductoController {

    async getAll(req, res) {
        try {
            const [result] = await pool.query('SELECT * FROM productos');
            res.json(result);
        } catch (error) {
            res.status(500).json({ "Error": "Ocurrió un error al obtener los productos" })
        }
    }
    async getOne(req, res) {
        try {
            const producto = req.params.id;
            const [result] = await pool.query('SELECT * FROM productos WHERE id = ?', [producto]);
            if (result.length > 0) {
                res.json(result[0]);
            } else {
                res.status(404).json({ "Error": `No se encontró un producto asociado con el id ${producto} ` });
            }
        } catch (error) {
            res.status(500).json({ "Error": "Ocurrió un error al obtener el producto" });
        }
    }

    async add(req, res) {
        try {
            const producto = req.body;
            const [result] = await pool.query(`INSERT INTO Productos(nombre, precio, stock) VALUES (?, ?, ?)`, [producto.nombre, producto.precio, producto.stock ]);
            res.json({ "ID agregado": result.insertid, "message": "Nuevo producto agregado con éxito" });
        } catch (error) {
            res.status(500).json({"Error":"Ocurrió un error al agregar el producto"});
        }
    }

    
    
    
    async deleteId(req, res) {
        try{
            const producto = req.body;
            const [result] = await pool.query(`DELETE FROM Productos WHERE id=(?)`, [producto.id]);
            if (result.affectedRows > 0) {
                res.json({ "message": `Producto con id ${producto.id} eliminado exitosamente` });
            } else {
                res.status(404).json({ "Error": `No se encontró ningún producto con id ${producto.id}` });
            }
        } catch (error) {
            res.status(500).json({ "Error": "Ocurrió un error al intentar eliminar el producto" });
        }
    }
    async update(req, res) {
        try {
            const producto = req.body;
            const [result] = await pool.query(`UPDATE Productos SET nombre=(?), precio=(?), stock=(?)  WHERE id=?`, [producto.nombre, producto.precio, producto.stock, producto.id]);
            if (result.changedRows > 0) {
                res.json({ "message": `Producto actualizado con éxito` });             
            } else {
                res.status(404).json({ "Error": `No se encontró ningún producto con el id ${producto.id}` });
            }
        } catch (error) {
            res.status(500).json({ "Error": "Ocurrió un error al actualizar el producto."});
        }
        
    }

}

export const producto = new ProductoController();