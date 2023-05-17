'use client';

import { NextPage } from 'next';
import { useEffect, useState } from 'react';
import client from '../../lib/apollo-client';
import {
  User,
  UsersCollectionDocument,
  UsersCollectionQuery,
} from '@/generated/graphql-operations';

const Home: NextPage = () => {
  const [users, setUsers] = useState<User[]>([]);
  useEffect(() => {
    (async () => {
      const { data } = await client.query<UsersCollectionQuery>({
        query: UsersCollectionDocument,
      });
      setUsers(data.users as User[]);
    })();
  }, []);

  return (
    <div>
      <main>
        <h1>Wine Cellar</h1>
        {users.map((user) => (
          <li key={user.id}>{user.name}</li>
        ))}
      </main>
    </div>
  );
};

export default Home;
