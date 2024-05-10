open Photo_site
open Photo_site_pages
open Photo_site_components

let () =
    Dream.run
    @@ Dream.logger
    @@ Dream.router [
        Dream.get "/" (fun _ -> Dream_html.respond (Index_page.page 1));
        Dream.get "/contact" (fun _ -> Dream_html.respond Contact_page.page);
        Dream.get "/about" (fun _ -> Dream_html.respond About_page.page);
        Dream.get "/api/photo/:id" (fun request ->
            Dream.param request "id"
            |> int_of_string
            |> Data.get_photo
            |> Image_carousel.node
            |> Dream_html.respond);
        Dream.get "/:id" (fun request ->
            Dream.param request "id"
            |> int_of_string
            |> Index_page.page
            |> Dream_html.respond);
        Dream.get "/**" @@ Dream.static "www";
    ]
