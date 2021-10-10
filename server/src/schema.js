import { makeExecutableSchema } from "@graphql-tools/schema";
import typeDefs from './schema.graphql';
import queries from './resolvers/queries.js';
import mutations from "./resolvers/mutations.js";

const schema = makeExecutableSchema({
    typeDefs, resolvers: {
        Query: { ...queries },
        Mutation: { ...mutations },
    }
});

export default schema;
