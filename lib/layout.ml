open Dream_html
open HTML

let head page_title =
    head [] [
        title [] "%s - justynhunter.com" page_title;
        meta [ charset "utf8" ];
        link [ rel "stylesheet"; href "/css/site.css" ];
        script [ src "https://unpkg.com/htmx.org@1.9.9" ] ""
    ]

let header =
    header [] [
        div [] [
            a [ href "/" ] [
                h1 [] [ txt "justyn hunter" ]
            ]
       ];
        div [ class_ "link_container" ] [
            a [ href "/about" ] [ txt "about" ];
            a [ href "/contact" ] [ txt "contact" ];
            a [ href "https://www.instagram.com/justynh"] [ txt "insta" ];
            a [ href "https://www.flickr.com/photos/j_hunter" ] [ txt "flickr" ];
        ]
    ]

let footer =
    footer [] [
        div [] [ txt "copyright 2024" ]
    ]

let main page_title content =
    html [ lang "en" ] [
        head page_title;
        body [] [
            header;
            main [] [ content ];
            footer;
        ];
    ]

