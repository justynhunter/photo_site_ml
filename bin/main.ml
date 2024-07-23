open Photo_site
open Photo_site_pages
open Photo_site_components

let get_id request = 
    Dream.param request "id"
    |> int_of_string_opt
    |> function | Some(id) -> id | None -> 1


let get_image_carousel request =
    get_id request
    |> Data.get_photo
    |> Image_carousel.node
    |> Dream_html.respond

let get_index_page request =
    get_id request
    |> Index_page.page
    |> Dream_html.respond

let () =
    Dream.run
    @@ Dream.logger
    @@ Dream.router [
        Dream.get "/" (fun _ -> Dream_html.respond (Index_page.page 1));
        Dream.get "/contact" (fun _ -> Dream_html.respond Contact_page.page);
        Dream.get "/about" (fun _ -> Dream_html.respond About_page.page);
        Dream.get "/api/photo/:id" get_image_carousel;
        Dream.get "/:id" get_index_page;
        Dream.get "/**" @@ Dream.static "www";
    ]
