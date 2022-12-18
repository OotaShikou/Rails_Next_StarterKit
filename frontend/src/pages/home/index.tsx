import { GetServerSideProps } from "next";
import * as React from "react";

import { withAuthServerSideProps } from "../../lib/auth";

export const getServerSideProps: GetServerSideProps =
  withAuthServerSideProps("/api/v1/home");

const Home = () => {
  return (
    <>
        <main>
          <p>ホーム画面です</p>
        </main>
    </>
  );
};

export default Home;