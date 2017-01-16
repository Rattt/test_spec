# My Task


## Common description



## Installing

In order that my application worked at all machines, I use Docker and Compose.


1. **We up containers**

    ```
    docker-compose up
    ```
    
    or for demonizing
    ```
    docker-compose up -d
    ```


2. **Before**

    We can run aplication with new db
    ```
    docker-compose run app rails db:create
    ```
    
    We can test the application using
    ```
    docker-compose run -e "RAILS_ENV=test" app rspec
    ```
