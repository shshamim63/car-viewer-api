# car-viewer
___

## ERD
![banner](./diagram/vehicleappointment.png)

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

An API(Application Program Interface) build with Ruby on Rails. Based on users requested path, it renders related data in JSON format. 

## Table of Contents

- [What_It_Does?](#What_It_Does?)
- [Built_With](#Built_With)
- [Install](#install)
- [Usage](#usage)
- [API](#api)
- [Maintainers](#maintainers)
- [Contributing](#contributing)
- [License](#license)

## What_It_Does?
```
1. Takes username, email, password to register a user.
2. User authentication cover by taking email and password.
3. Renders a list of cars with related informations. Such as,
..1. Car model
..2. Price
..3. Payable price
..4. Minimum deposit to test a car
..5. Representative name
4. Users appointment info.
5. Details of a specific car model.

```
## Built_With
```
1. Ruby [Version]- 2.7.0p0
2. Rails [Version]- 6.0.2.1
```
## Install

```
1. Clone the repository, `git clone git@github.com:shshamim63/car-viewer-api.git`
2. Get into the project directory `cd car-viewer-api`.
3. Run `bundle install` to install the gem.
4. To run the surver `rails s -p 3001`.
```

## API
The live version of the api in [here](https://car-viewer-api.herokuapp.com/)
## Maintainers

[@Shakhawat Hossain](https://github.com/shshamim63)

## Contributing

PRs accepted.

Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

MIT © 2020 Shakhawat Hossain
