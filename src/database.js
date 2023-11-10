import mysqlConnection from 'mysql2/promise';

const properties = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'romero_nm'
};

/* Es el pool de conexion con la base de datos */
export const pool = mysqlConnection.createPool(properties);