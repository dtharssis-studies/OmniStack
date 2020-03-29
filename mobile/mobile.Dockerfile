FROM node:12.16.1

RUN apt-get update && apt-get upgrade -y

RUN npm install expo-cli --global

# mobile = name your project
RUN expo init mobile

RUN cd mobile && expo start

RUN npm install @react-navigation/native

# install in packege.json
RUN expo install react-native-gesture-handler react-native-reanimated react-native-screens react-native-safe-area-context @react-native-community/masked-view

# Type navigation (verificar o package.json)
RUN npm install @react-navigation/stack

RUN expo install expo-constants

RUN expo install expo-mail-composer

RUN npm install axios

RUN npm install intl