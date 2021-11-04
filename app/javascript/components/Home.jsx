import { Layout } from "antd";
import React from "react";
import Wears from "./Wears";
import Header from "./Header";

const { Content, Footer } = Layout;

export default () => (
  <Layout className="layout">
    <Header />
    <Content style={{ padding: "0 50px" }}>
      <div className="site-layout-content" style={{ margin: "100px auto" }}>
        <h1>Wear Catalog</h1>
        <Wears />
      </div>
    </Content>
    <Footer style={{ textAlign: "center" }}>Honeybadger ©2020.</Footer>
  </Layout>
);