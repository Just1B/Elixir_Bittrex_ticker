# ( Re ) - Build & Run Elixir Only

    docker-compose up --build

# Get Dependencies

    docker exec -it YOUR_ELIXIR_CONTAINER mix deps.get

# Enter in Interactive Shell 

    docker exec -it YOUR_ELIXI_CONTAINER iex -S mix

# The Ticker 

    App.ticker("BTC","XVG")

</br>

# Clear & Remove Volume

    docker systeme prune
    docker volume rm --force YOUR_VOLUME_NAME
    docker rmi --force YOUR_IMAGE_NAME

![index](https://github.com/Just1B/Elixir_Bittrex_ticker/raw/master/screen/screen.png)