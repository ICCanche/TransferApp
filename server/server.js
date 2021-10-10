import { ApolloServer } from 'apollo-server-express';
const app = require('express')();
var http = require('http');
const { ApolloServerPluginDrainHttpServer } = require('apollo-server-core');

import schema from './src/schema.js';


startApolloServer();

async function startApolloServer() {
  const httpServer = http.createServer(app);
  const server = new ApolloServer({
    schema,
    plugins: [ApolloServerPluginDrainHttpServer({ httpServer })],
  });
  await server.start();

  // Additional middleware can be mounted at this point to run before Apollo.
  // app.use('*');

  // Mount Apollo middleware here.
  server.applyMiddleware({ app, path: '/graphql' });
  await new Promise(resolve => httpServer.listen({ port: 4000 }, resolve));
  console.log(`🚀 Server ready at http://localhost:4000${server.graphqlPath}`);
  return { server, app };
}