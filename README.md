# Drive-through Ordering System

This is an application to control the ordering and food preparation process at a FastFood drive-through service.

## Primary Features

* Order Placement Interface (/orders/new)

* Kitchen Display System (/order_items/kitchen_display)

* Order Completion and Pickup Interface (orders/ready_for_pickup)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Setting Up the Application

1. **Clone the repository**

    ```
    git clone https://github.com/ajordaan/drive-through-ordering-system.git
    cd drive-through-ordering-system
    ```

2. **Install dependencies**

    Using [Bundler](https://bundler.io/) and [Yarn](https://yarnpkg.com/):

    ```
    bundle install
    yarn install
    ```

4. **Set up PostgreSQL**

    - Make sure PostgreSQL is running on your system.

    - Create and setup the database:

        ```
        bin/rails db:create db:setup
        ```

        This will create the databases, load the schema, and initialize with the seed data.
### Running the Application

1. **Start the Rails server**

    You can start the rails server using the command given below.

    ```
    bin/rails s
    ```

2. **Serve assets with esbuild**

    ```
    yarn build --watch
    ```

    And now you can visit the site with the URL http://localhost:3000
