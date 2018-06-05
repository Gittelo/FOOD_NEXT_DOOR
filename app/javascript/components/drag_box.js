const box = document.getElementsByClassName('box')[0]
const containers = document.getElementsByClassName('holder')
for(const container of containers) {
  container.addEventListener("dragover", dragover)
  container.addEventListener("dragenter", dragenter)
  container.addEventListener("drop", drop)
}
