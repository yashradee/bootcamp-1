const container = document .getElementById("container")
console.log("container",container)


document.querySelector(".list")
document.querySelector(".list").children[1]
document.querySelector(".list").children[1].textContent
document.querySelector(".list").children[1].textContent = "RICHard"

// document.querySelectorAll(".list")
// document.querySelectorAll(".list")[0].firstElementChild.textContent="ben",'ben'
const lists = document.querySelectorAll(".list")
lists.forEach(list => list.firstElementChild.textContent = "yash")

lists[1].children[1].remove()


lists.forEach(list => list.classList.add("student_list"))
const firstUl = document.querySelector('ul.list.student_list')
firstUl.classList.add("university","attendance")