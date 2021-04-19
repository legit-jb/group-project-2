const commentFormHandler = async (event) => {
  event.preventDefault();

  const comment = document.querySelector("#comment-signup").value.trim();

  if (comment) {
    const response = await fetch("/api/movie", {
      method: "POST",
      body: JSON.stringify({ comment }),
      headers: { "Content-Type": "application/json" },
    });

    if (response.ok) {
      document.location.replace("/");
    } else {
      alert("Failed to add comment.");
    }
  }
};

const upvote = document.getElementById("upvote");
const downvote = document.getElementById("downvote");

upvote.addEventListener("click", () => {
    upvote.style.color = '#f2e5d5';
})

downvote.addEventListener("click", () => {
    downvote.style.color = '#f2e5d5';
})

document
  .querySelector(".comment-form")
  .addEventListener("submit", signupFormHandler);

  
