import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import SEO from "../components/seo"

const SecondPage = () => (
    <Layout>
        <SEO title="Page two" />
        <h1>Hi from the second page Morekid!</h1>
        <p>Welcome to THIS AMAZING PAGE!</p>
        <Link to="/">Go back to the homepage</Link>
    </Layout>
)

export default SecondPage
