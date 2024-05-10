type photo = {
    id : int;
    next_id : int;
    prev_id : int;
    src : string;
    alt : string;
}

let photos : photo list = [
    { 
        id = 1;
        next_id = 2;
        prev_id = 3;
        src = "https://live.staticflickr.com/65535/53609244371_184f1a88c1_b.jpg";
        alt = "rotting house";
    };
    {
        id = 2;
        next_id = 3;
        prev_id = 1;
        src = "https://live.staticflickr.com/65535/53684852131_5d1a0c2a54_b.jpg";
        alt = "chimney";
    };
    { 
        id = 3;
        next_id = 1;
        prev_id = 2;
        src = "https://live.staticflickr.com/65535/53684851241_bac2ceb36b_b.jpg";
        alt = "rotting house"
    } 
]

let get_photo id =
    List.find (fun p -> p.id = id) photos
