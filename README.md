<div align="center">
  <img src=".github/images/logo-wordpress.webp" width="150">
  <h2>
    WordPress Development Environment
  </h2>
  <p>
    <a href="#about">About</a>&#xa0;|&#xa0;
    <a href="#requirements">Requirements</a>&#xa0;|&#xa0;
    <a href="#getting-started">Getting Started</a>&#xa0;|&#xa0;
    <a href="#suggestion-of-plugins-that-help-in-development">Plugins</a>
  </p>
</div>

## About

Environment for developing WordPress plugins and themes.

## Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

Clone the repository to some folder on your machine

```bash
git clone https://github.com/robsonnatanael/wordpress-development-environment
```

enter the repository

```bash
cd wordpress-development-environment
```

set the environment variables following the [.env.example](.env.example)

launch the application using docker compose

```bash
docker compose up -d --build
```

open http://localhost with your browser to see the result.

## Suggestion of plugins that help in development

- [Debug Bar](https://wordpress.org/plugins/debug-bar/)
- [Query Monitor](https://br.wordpress.org/plugins/query-monitor/)
