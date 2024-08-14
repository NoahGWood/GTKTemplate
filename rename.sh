read -p "Enter new project name: " name;
mv GTKTemplate/include/GTKTemplate.h  GTKTemplate/include/$name.h;
mv GTKTemplate/src/GTKTemplate.cpp  GTKTemplate/src/$name.cpp;
mv GTKTemplate $name;
find ./ -type f -not -path '*/\vendor/*' -exec sed -i 's/GTKTemplate/'$name'/g' {} \;