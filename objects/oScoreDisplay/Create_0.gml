finalScore = global.points;
rating = ""; 
isFlower = global.objectDestroyed;
flowerSaved= "Yes";
// Calculate the rating based on the final score && flowerCount >=1
if (finalScore >= 30 && !isFlower && room = LevelCleared1 ) {
    rating = "three_stars";
	flowerSaved = "Yes";
} else if (finalScore >= 56 && !isFlower && room = LevelCleared2) {
    rating = "three_stars";
	flowerSaved = "Yes";
}else if (finalScore >= 25 && room = LevelCleared1) {
    rating = "two_stars";
	flowerSaved = "No";
} else if (finalScore >= 56 && room = LevelCleared2) {
    rating = "two_stars";
	flowerSaved = "No";
} else if (finalScore < 25 && room = LevelCleared1) {
    rating = "one_star";
	flowerSaved = "No";
} else if (finalScore < 55 && room = LevelCleared2) {
    rating = "one_star";
	flowerSaved = "No";
} 


// Create oStar objects to represent the rating
switch (rating) {
    case "three_stars":
	    instance_create_layer(325,285,"Scores",oFlower).image_index=0;
        instance_create_layer(415,360,"Scores",oStar).image_index=0;
		instance_create_layer(495,360,"Scores",oStar).image_index=0;
		instance_create_layer(575,360,"Scores",oStar).image_index=0;
        
        break;
    case "two_stars":
		instance_create_layer(325,285,"Scores",oFlower).image_index=0;
        instance_create_layer(415,360,"Scores",oStar).image_index=0;
		instance_create_layer(495,360,"Scores",oStar).image_index=0;
       
        break;
    case "one_star":
		instance_create_layer(325,285,"Scores",oFlower).image_index=0;
        instance_create_layer(495,360,"Scores",oStar).image_index=0;
        break;

}

