document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants
  const toggleLi = (e) => { // First, we declare a function toggleLi that takes in an event.
    const li = e.target; // Using that event, we grab the currentTarget (which is the <li> that was clicked on)
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited"; // toggle its className to be either visited or ""
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  // We want to make it so that users can input a place, click the submit button, and have the input box clear out & the new item appended to the list. Remember to use the class names and IDs already set up in the HTML document!
  const handleFavoriteSubmit = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;
    favoriteInput.value = "";

    const newListLi = document.createElement("li");
    newListLi.textContent = favorite;

    const favoritesList = document.getElementById("sf-places");
    favoritesList.appendChild(newListLi);
  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleFavoriteSubmit);


  // adding new photos
  // update the last section to allow users to add their own photos of cute puppies.
  // Clicking the "Toggle new photo form" button should show or hide the form to add a photo.
  // When submitted, the form should then append a new list item containing an <img> tag to the bottom of the puppy list.
  // Don't forget that you're appending an <li> that contains an <img> tag to the <ul>.
  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);


  const handlePhotoSubmit = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImg);

    const dogPhotosList = document.querySelector(".dog-photos");
    dogPhotosList.appendChild(newPhotoLi);
  };

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);
});
