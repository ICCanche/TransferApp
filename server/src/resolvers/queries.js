
import graphql from "graphql";
import db from "../db/db";


const queries = {
    getAllTransfers: () => {
        return new Promise((resolve, _) => {
            var transfers = [];
            var query = 'SELECT * FROM Transfer';
            db.all(query, function (err, rows) {
                if (err) {
                    throw new Error('Cannot fetch data' + err);
                } else {
                    rows.forEach((row) => {
                        transfers.push(toModel(row));
                    });

                    resolve(transfers);
                }
            });
        });
    },
}

const toModel = (transfer) => {
    return {
        "id": transfer.id,
        "amount": transfer.amount,
        "senderName": transfer.senderName,
        "createdAt": transfer.createdAt,
    }
}

export default queries;
