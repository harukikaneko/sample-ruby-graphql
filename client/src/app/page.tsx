"use client";

import { gql } from '@apollo/client'
import { NextPage } from 'next'
import { useEffect, useState } from 'react'
import client from './apollo-client'

const query = gql`
    {
    users {
      id
      name
      email
      wines {
        name
      }
    }
  }
`

const Home: NextPage = () => {
  const [users, setUsers] = useState<any[]>([])
  useEffect(() => {
    (async () => {
      const { data } = await client.query({
        query: query,
      })
    setUsers(data.users)})()
  }, [])

  return (
    <div>
      <main>
        <h1>Wine Cellar</h1>
        {users.map((user) => (<li key={user.id}>{user.name}</li>))}
      </main>
    </div>
  )
}

export default Home
