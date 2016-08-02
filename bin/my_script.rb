require 'addressable/uri'
require 'rest-client'

# def index_users
#     url = Addressable::URI.new(
#       scheme: 'http',
#       host: 'localhost',
#       port: 3000,
#       path: '/users.html'
#     ).to_s
#
#     puts RestClient.get(url)
# end
#
# index_users

# def show_users(id)
#   begin
#     url = Addressable::URI.new(
#       scheme: 'http',
#       host: 'localhost',
#       port: 3000,
#       path: "/users/#{id}"
#     ).to_s
#
#     puts RestClient.get(url)
#   rescue RestClient::InternalServerError => e
#     puts e
#     puts "Rescued internal server error"
#   end
# end
#
# show_users(5)

def delete_users(id)
  begin
    url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: "/users/#{id}"
    ).to_s

    puts RestClient.delete(url)
  rescue RestClient::InternalServerError => e
    puts e
    puts "Delete server error"
  end
end

delete_users(2)

# def create_users
#     url = Addressable::URI.new(
#       scheme: 'http',
#       host: 'localhost',
#       port: 3000,
#       path: '/users.html'
#     ).to_s
#
#     puts RestClient.post(url, {:water => "cup"})
# end
#
# create_users

# def update_users
#     url = Addressable::URI.new(
#       scheme: 'http',
#       host: 'localhost',
#       port: 3000,
#       path: '/users.html'
#     ).to_s
#
#     puts RestClient.patch(url, {
#
#       })
# end
#
# update_users
#
# def create_user(name, email)
#   begin
#     url = Addressable::URI.new(
#       scheme: 'http',
#       host: 'localhost',
#       port: 3000,
#       path: '/users.json'
#     ).to_s
#
#     puts RestClient.post(
#       url,
#       { user: { name: name, email: email } }
#       )
#     rescue RestClient::UnprocessableEntity => e
#       puts e
#     end
#
# end
#
# create_user("Gizmo", "gizmo@gizmo.gizmo")
