open Photo_site
open Photo_site_components
open Dream_html
open HTML

let page id =
    Data.get_photo id
    |> Image_carousel.node
    |> fun node -> div [] [node]
    |> Layout.main "justyn hunter"
