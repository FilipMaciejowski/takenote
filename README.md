<p align="center">
  <img src="./docs/logo.png">
</p>

<p align="center">
 <img src="https://img.shields.io/badge/License-MIT-blue.svg">
  <a href="#contributors"><img src="https://img.shields.io/badge/all_contributors-34-orange.svg?style=flat-square)"></a>
   <a href="https://travis-ci.org/taniarascia/takenote"><img src="https://travis-ci.org/taniarascia/takenote.svg?branch=master"></a>
</p>

<p align="center">A web-based note-taking app with GitHub sync and Markdown support. (WIP)</p>

> **Warning**: TakeNote is still in active development. You can visit [takenote.dev](https://takenote.dev) to see the work in progress, but your account and the notes you create are **temporary** will not be persisted. All data will be lost once GitHub integration is complete.

![Screenshot](./docs/screenshot.png)

### Simple

TakeNote was made by developers for developers - a simple, plain-text note-taking app for the web with Markdown support. What you see is what you paste. No WYSIWIG, no formatting pasted from the web, and no features you don't need or want.

### Organized

Drag-and-drop notes into categories, instantly search through notes, and pin your favorites to the top.

### Beautiful

Beautiful, clean design with light and dark themes.

### Sync to GitHub

In progress!

## Reviews

> _"I think the lack of extra crap is a feature."_ — Craig Lam

## Setup

### Install

```bash
git clone git@github.com:taniarascia/takenote
cd takenote
npm i
```

### Development

In the development environment, an Express server is running on port `5000` to handle all API calls, and a hot Webpack dev server is running on port `3000` for the React front end. To run both of these servers concurrently, run the `dev` command.

```bash
# Run client and server concurrently
npm run dev
```

Go to `localhost:3000` to view the app.

API requests will be proxied to port `5000` automatically.

### Production

In production, the React app is built, and Express redirects all incoming requests to the `dist` directory on port `5000`.

```bash
# Build client for production and start server
npm run build && npm run start
```

Go to `localhost:5000` to view the app.

### Run in Docker

Docker containers are [also available on the Dockerhub registry](https://hub.docker.com/r/taniarascia/takenote).

```bash
# Build image and run container
docker build -t takenote .
docker run -p 5000:5000 takenote
```

Go to `localhost:5000` to view the app.

### Seed data

To seed the app with some test data, paste the contents of `seed.js` into your browser console.

## Testing

Run unit and component tests.

```bash
npm run test
```

Run Cypress e2e tests.

```bash
npm run cypress:open
```

## Contributing

TakeNote is an open source project, and contributions of any kind are welcome! Open issues, bugs, and enhancements are all listed on the [issues](https://github.com/taniarascia/takenote/issues) tab and labeled accordingly. Feel free to open bug tickets and make feature requests. Easy bugs and features will be tagged with the `good first issue` label.

The project is written in TypeScript, React and Redux. TypeScript is set to strict mode, with no implicit any allowed. The formatting style for the project is set by Prettier.

## Contributors

Thanks goes to these wonderful people:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://www.taniarascia.com"><img src="https://avatars3.githubusercontent.com/u/11951801?v=4" width="50px;" alt=""/><br /><sub><b>Tania Rascia</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=taniarascia" title="Code">💻</a> <a href="#ideas-taniarascia" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Ataniarascia" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/hankolsen"><img src="https://avatars3.githubusercontent.com/u/1008390?v=4" width="50px;" alt=""/><br /><sub><b>hankolsen</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=hankolsen" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Ahankolsen" title="Bug reports">🐛</a> <a href="https://github.com/taniarascia/takenote/commits?author=hankolsen" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://github.com/joseph-perez"><img src="https://avatars0.githubusercontent.com/u/7772649?v=4" width="50px;" alt=""/><br /><sub><b>Joseph Perez</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=joseph-perez" title="Code">💻</a></td>
    <td align="center"><a href="https://cutting.scot"><img src="https://avatars0.githubusercontent.com/u/118328?v=4" width="50px;" alt=""/><br /><sub><b>Paul</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=dagda1" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/commits?author=dagda1" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://martinbrosenberg.com/"><img src="https://avatars2.githubusercontent.com/u/2382147?v=4" width="50px;" alt=""/><br /><sub><b>Martin Rosenberg</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=MartinRosenberg" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3AMartinRosenberg" title="Bug reports">🐛</a> <a href="#maintenance-MartinRosenberg" title="Maintenance">🚧</a></td>
    <td align="center"><a href="http://codepen.io/meowwwls"><img src="https://avatars3.githubusercontent.com/u/16426195?v=4" width="50px;" alt=""/><br /><sub><b>Melissa</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=meowwwls" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/jjtowle"><img src="https://avatars0.githubusercontent.com/u/41359068?v=4" width="50px;" alt=""/><br /><sub><b>Jason Towle</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=jjtowle" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="http://blog.isquaredsoftware.com"><img src="https://avatars1.githubusercontent.com/u/1128784?v=4" width="50px;" alt=""/><br /><sub><b>Mark Erikson</b></sub></a><br /><a href="#ideas-markerikson" title="Ideas, Planning, & Feedback">🤔</a></td>
    <td align="center"><a href="http://www.alphonsebouy.fr"><img src="https://avatars2.githubusercontent.com/u/32797759?v=4" width="50px;" alt=""/><br /><sub><b>Alphonse Bouy</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/issues?q=author%3Aalphonseb" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/dave2kb"><img src="https://avatars1.githubusercontent.com/u/30696030?v=4" width="50px;" alt=""/><br /><sub><b>dave2kb</b></sub></a><br /><a href="#design-dave2kb" title="Design">🎨</a> <a href="#ideas-dave2kb" title="Ideas, Planning, & Feedback">🤔</a></td>
    <td align="center"><a href="https://github.com/Dantaro"><img src="https://avatars3.githubusercontent.com/u/2750903?v=4" width="50px;" alt=""/><br /><sub><b>Devin McIntyre</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=Dantaro" title="Code">💻</a></td>
    <td align="center"><a href="http://slofish.io"><img src="https://avatars0.githubusercontent.com/u/1240484?v=4" width="50px;" alt=""/><br /><sub><b>Jeffrey Fisher</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/issues?q=author%3Ajeffslofish" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/dong-alex"><img src="https://avatars2.githubusercontent.com/u/23242741?v=4" width="50px;" alt=""/><br /><sub><b>Alex Dong</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=dong-alex" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Publicker"><img src="https://avatars2.githubusercontent.com/u/52673485?v=4" width="50px;" alt=""/><br /><sub><b>Publicker</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=Publicker" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/kleyu"><img src="https://avatars2.githubusercontent.com/u/36169811?v=4" width="50px;" alt=""/><br /><sub><b>Jakub Naskręski</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=kleyu" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Akleyu" title="Bug reports">🐛</a> <a href="https://github.com/taniarascia/takenote/commits?author=kleyu" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://opw0011.github.io/"><img src="https://avatars2.githubusercontent.com/u/10897048?v=4" width="50px;" alt=""/><br /><sub><b>Benny O</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=opw0011" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/justDOindev"><img src="https://avatars3.githubusercontent.com/u/44042682?v=4" width="50px;" alt=""/><br /><sub><b>Justin Payne</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=justDOindev" title="Code">💻</a></td>
    <td align="center"><a href="https://yikjin.github.io"><img src="https://avatars2.githubusercontent.com/u/34995304?v=4" width="50px;" alt=""/><br /><sub><b>marshmallow</b></sub></a><br /><a href="#maintenance-yikjin" title="Maintenance">🚧</a></td>
    <td align="center"><a href="http://jfelix.info"><img src="https://avatars2.githubusercontent.com/u/21092519?v=4" width="50px;" alt=""/><br /><sub><b>Jose Felix </b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=Jfelix61" title="Code">💻</a></td>
    <td align="center"><a href="https://xboston.dev"><img src="https://avatars1.githubusercontent.com/u/201306?v=4" width="50px;" alt=""/><br /><sub><b>Nikolay Kirsh</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=xboston" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Mudassar045"><img src="https://avatars0.githubusercontent.com/u/24487349?v=4" width="50px;" alt=""/><br /><sub><b>Mudassar Ali</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=Mudassar045" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://nathanbland.github.io/"><img src="https://avatars1.githubusercontent.com/u/926111?v=4" width="50px;" alt=""/><br /><sub><b>Nathan Bland</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/issues?q=author%3ANathanBland" title="Bug reports">🐛</a> <a href="https://github.com/taniarascia/takenote/commits?author=NathanBland" title="Code">💻</a></td>
    <td align="center"><a href="http://craiglam.com"><img src="https://avatars1.githubusercontent.com/u/8170456?v=4" width="50px;" alt=""/><br /><sub><b>Craig Lam</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=siliconeidolon" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Asiliconeidolon" title="Bug reports">🐛</a> <a href="https://github.com/taniarascia/takenote/commits?author=siliconeidolon" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://twitter.com/ashinzekene"><img src="https://avatars2.githubusercontent.com/u/20991583?v=4" width="50px;" alt=""/><br /><sub><b>Ashinze Ekene</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/issues?q=author%3Aashinzekene" title="Bug reports">🐛</a> <a href="https://github.com/taniarascia/takenote/commits?author=ashinzekene" title="Code">💻</a></td>
    <td align="center"><a href="https://adityasriram.ga"><img src="https://avatars0.githubusercontent.com/u/38230536?v=4" width="50px;" alt=""/><br /><sub><b>Harry Sullivan</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=harrySullivan" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/moudev"><img src="https://avatars2.githubusercontent.com/u/13499566?v=4" width="50px;" alt=""/><br /><sub><b>Mauricio Martínez</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=moudev" title="Code">💻</a></td>
    <td align="center"><a href="http://www.bugs.cc/"><img src="https://avatars0.githubusercontent.com/u/8198408?v=4" width="50px;" alt=""/><br /><sub><b>Black-Hole</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=BlackHole1" title="Code">💻</a></td>
    <td align="center"><a href="https://zogan.de/"><img src="https://avatars0.githubusercontent.com/u/122564?v=4" width="50px;" alt=""/><br /><sub><b>Frank Blendinger</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=yogan" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://www.osiux.ws"><img src="https://avatars2.githubusercontent.com/u/204463?v=4" width="50px;" alt=""/><br /><sub><b>Eduardo Reveles</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=osiux" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/leofrozenyogurt"><img src="https://avatars2.githubusercontent.com/u/2198384?v=4" width="50px;" alt=""/><br /><sub><b>Leo Royzengurt</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=leofrozenyogurt" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Aleofrozenyogurt" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/kcvgan"><img src="https://avatars1.githubusercontent.com/u/13578888?v=4" width="50px;" alt=""/><br /><sub><b>kcvgan</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=kcvgan" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Akcvgan" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/codytowstik"><img src="https://avatars1.githubusercontent.com/u/10625608?v=4" width="50px;" alt=""/><br /><sub><b>Cody Towstik</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=codytowstik" title="Code">💻</a> <a href="https://github.com/taniarascia/takenote/commits?author=codytowstik" title="Tests">⚠️</a> <a href="https://github.com/taniarascia/takenote/issues?q=author%3Acodytowstik" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/vincentdoerig"><img src="https://avatars3.githubusercontent.com/u/24668338?v=4" width="50px;" alt=""/><br /><sub><b>Vincent Dörig</b></sub></a><br /><a href="https://github.com/taniarascia/takenote/commits?author=vincentdoerig" title="Tests">⚠️</a> <a href="https://github.com/taniarascia/takenote/commits?author=vincentdoerig" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

## Acknowledgements

- A big thank you to [David Bock](https://dkbock.com/) for logo design.

## Author

- [Tania Rascia](https://www.taniarascia.com)

## License

This project is open source and available under the [MIT License](LICENSE).
