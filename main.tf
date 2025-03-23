resource "local_file" "games" {
    filename = "/home/coder/fav_games.txt"
    content = "FIFA 2021"
    file_permission = "0754"
}
