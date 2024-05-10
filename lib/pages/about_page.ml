open Dream_html
open HTML
open Photo_site

let page =
    div [ id "cv" ] [
        p [] [ txt "Justyn Hunter lives in Nashville, TN and documents paces of the south"];
        h2 [] [ txt "cv" ];
        ul [] [
            li [] [ txt "photo selected for inclusion in Investigations in Infrastructure." ];
            li [] [ txt "photo selected for inclusion in Everything is Narrative." ];
            li [] [ txt "juried into Slow Exposures 2023 show." ];
        ]
    ]
    |> Layout.main "about"
