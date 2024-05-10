open Photo_site
open Dream_html
open HTML

let page =
    div [ id "form_container" ][
        form [] [
            label [ for_ "#name" ] [ txt "name" ];
            input [ type_ "text"; name "name" ];
            label [ for_ "#message_box" ] [
                txt "enter your message below"
            ];
            textarea [ id "message_box" ] "";
            input [ type_ "submit"; value "submit" ]
        ]
    ]
    |> Layout.main "contact"

    
