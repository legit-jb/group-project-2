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

document
  .querySelector(".comment-form")
  .addEventListener("submit", signupFormHandler);
