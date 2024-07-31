open Dream_html
open HTML
open Photo_site

let page =
    div [ id "cv" ] [
        p [] [ txt "Justyn Hunter lives in Nashville, TN and documents the America south with an emphasis on human inhabited space, the past and religious iconography."];
        p [] [ txt "other work may be found at the \""; a [ href "" ] [ txt "some photographers" ]; txt "collective." ];
        h2 [] [ txt "socials" ];
        ul [] [
            li [] [ a [ href "https://www.instagram.com/justynh"; target "_blank" ] [ txt "instagram" ] ];
            li [] [ a [ href "https://www.flickr.com/photos/j_hunter"; target "_blank" ] [ txt "flickr" ] ];
        ];
        h2 [] [ txt "published" ];
        ul [] [
            li [] [ a [ href "https://subjectivelyobjective.com/product/investigations-in-infrastructure/"; target "_blank" ] [ em [] [ txt "Investigations in Infrastructure" ] ]; txt ", Subjectively Objective, Rochester Hills, MI, 2022" ];
            li [] [ a [ href "https://subjectivelyobjective.com/product/everything-is-narrative/"; target "_blank" ] [ em [] [ txt "Everything is Narrative" ]]; txt ", Subjectively Objective, Rochester Hills, MI, 2022" ];
            li [] [ a [ href "https://www.slowexposures.org/main-exhibit/2023-main-exhibit/"; target "_blank" ] [ em [] [ txt "Slow Exposures 2023" ]]; txt ", Georgia (jurors: Alexa Dilworth, Aline Smithson)" ];
        ]
    ]
    |> Layout.main "about"
