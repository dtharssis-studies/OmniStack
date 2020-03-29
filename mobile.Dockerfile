FROM node:12.16.1

RUN apt-get update && apt-get upgrade -y

ADD ./mobile /app/mobile

WORKDIR /app/mobile

# RUN npm install -g expo-cli -Y

# RUN npm install @react-navigation/native 



# # Feito Esse

# # Feito Esse
# RUN expo install react-native-gesture-handler react-native-reanimated react-native-screens react-native-safe-area-context @react-native-community/masked-view

# #
# RUN npm install @react-navigation/stack

# # RUN npm install @types/react-native

#
CMD ["node", "server.js"]