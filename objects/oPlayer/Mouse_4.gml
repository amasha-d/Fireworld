/// @description Insert description here
// You can write your code in this editor
if (!isSelected) {
    // Select this instance
    isSelected = true;
} else {
    // Deselect this instance
    isSelected = false;
}
with (oPlayer) {
    if (id != other.id) {
        isSelected = false;
    }
}