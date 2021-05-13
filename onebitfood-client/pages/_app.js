import Head from 'next/head';
import '../styles/globals.scss';

export default function MyApp({ Component, pageProps }) {
	return (
		<>
			<Head>
				<title>OneBitFood V2</title>
			</Head>

			<main>
				<Component {...pageProps} />
			</main>
		</>
	)
}