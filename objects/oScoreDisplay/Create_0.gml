finalScore = global.points;
rating = ""; 
isFlower = global.objectDestroyed;
// Calculate the rating based on the final score && flowerCount >=1
if (finalScore >= 30 && !isFlower ) {
    rating = "three_stars";
} else if (finalScore >= 25 && room = LevelCleared1) {
    rating = "two_stars";
} else if (finalScore >= 56 && room = LevelCleared2) {
    rating = "two_stars";
} else if (finalScore < 25 && room = LevelCleared1) {
    rating = "one_star";
} else if (finalScore < 56 && room = LevelCleared2) {
    rating = "one_star";
} 


// Create oStar objects to represent the rating
switch (rating) {
    case "three_stars":
        instance_create_layer(415,340,"Scores",oStar).image_index=0;
		instance_create_layer(495,340,"Scores",oStar).image_index=0;
		instance_create_layer(575,340,"Scores",oStar).image_index=0;
        
        break;
    case "two_stars":
        instance_create_layer(415,340,"Scores",oStar).image_index=0;
		instance_create_layer(495,340,"Scores",oStar).image_index=0;
       
        break;
    case "one_star":
        instance_create_layer(495,340,"Scores",oStar).image_index=0;
        break;

}

