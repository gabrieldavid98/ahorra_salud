// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const htmlElement = document.documentElement;

if (
  localStorage.getItem("mode") === "dark" ||
  (!("mode" in localStorage) &&
    window.matchMedia("(prefers-color-scheme: dark)").matches)
) {
  htmlElement.classList.add("dark");
} else {
  htmlElement.classList.remove("dark");
}

htmlElement.classList.add(
  localStorage.getItem("theme") || "uk-theme-blue"
);
