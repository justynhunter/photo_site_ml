open Dream_html
open HTML
open Photo_site

let node (photo : Models.photo) =
    div [ id "image_container" ] [
        button [
            id "btn_prev";
            Hx.get "/api/photo/%d" photo.prev_id;
            Hx.replace_url "/%d" photo.prev_id;
            Hx.swap "outerHTML swap:400ms";
            Hx.trigger "click";
            Hx.target "#image_container";
        ] [];
        img [
            src "%s" photo.src;
            alt "%s" photo.alt;
        ];
        button [
            id "btn_next";
            Hx.get "/api/photo/%d" photo.next_id;
            Hx.replace_url "/%d" photo.next_id;
            Hx.swap "outerHTML swap:400ms";
            Hx.trigger "click";
            Hx.target "#image_container"
        ] [];
    ]
    
