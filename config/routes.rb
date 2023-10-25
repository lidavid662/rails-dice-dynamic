Rails.application.routes.draw do
  get("/", {:controller=>"flex",:action=>"home"})
  get("/dice/:ndice/:sides", {:controller=>"flex",:action=>"roll"})
end
