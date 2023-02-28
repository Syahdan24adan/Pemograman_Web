const { PrismaClient } = require ('@prisma/client')
const prisma = new PrismaClient()
const express = require('express')
const server = express()
const port = 8888;

server.use(express.json())
server.get('/TiketPesawat', async (request, response) => {
    try {
        const tiket = await prisma.TiketPesawat.findMany()
        response.statusCode = 200
        response.json(tiket)
    }
    catch (error) {
        response.statusCode = 200
        response.json({
            message: error.message
        })
    }
    const users = await prisma.user.findMany()
    response.json(users)
})

server.listen(port, () => {
    console.log(`Server is running on port ${port}`)
})

