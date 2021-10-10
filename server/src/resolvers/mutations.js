import graphql from "graphql";
import db from "../db/db";
import moment from 'moment'; // require

const mutations = {
    transfer: async (obj, args) => {
        const { amount, senderName } = args.input;


        if (!amount) {
            throw new Error('No amount specified');
        }
        if (!senderName) {
            throw new Error('No senderName specified');
        }

        const date = moment().format('MMMM Do YYYY, h:mm:ss a');
        var sql = 'INSERT INTO TRANSFER (amount, senderName, createdAt) VALUES (?,?,?)'
        var params = [amount, senderName, date];
        var update = await db.run(sql, params);

        if (!update) {
            throw new Error('Cannot make transfer');
        } else {
            return {
                success: true,
            }
        }


    },
};

export default mutations;

