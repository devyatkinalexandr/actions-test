for DIR in ./lessons/*/*/*/; do
  if [ -f "$DIR/lesson.md" ]; then
    echo "${DIR}lesson.md exists."
  else
    echo "${DIR}lesson.md does not exist."
    exit 1
  fi
done
