
import nltk
from nltk.chat.util import Chat, reflections
# Define the prompts and responses for the chatbot
prompts = {
    "What is your name?": ["My name is ChatGPT.", "I am ChatGPT."],
    "How are you?": ["I'm doing well, thank you.", "I'm great! How can I assist you?"],
    "What can you do?": ["I can help answer your questions.", "I am an AI chatbot designed to assist you."],
    # add more prompts and responses here
}

# Define the chatbot's mood settings
mood_settings = {
    "default": prompts,
    "friendly": {
        "What is your name?": ["My name is ChatGPT. How can I help you today?", "Hi there! I'm ChatGPT."],
        "How are you?": ["I'm feeling great today! How can I assist you?", "I'm doing well. What can I help you with?"],
        # add more prompts and responses here for the "friendly" mood
    },
    "professional": {
        "What is your name?": ["My name is ChatGPT. How may I assist you?", "Hello! I am ChatGPT."],
        "How are you?": ["I am functioning as expected. How can I help you today?", "I'm here to assist you. What do you need?"],
        # add more prompts and responses here for the "professional" mood
    }
}

# Create a chatbot instance with the default mood
chatbot = Chat(mood_settings["default"], reflections)

# Start the chat loop
print("Hi! I'm ChatGPT. How can I assist you today?")
while True:
    user_input = input("You: ")
    if user_input.lower() == "quit":
        break
    response = chatbot.respond(user_input)
    print("ChatGPT:", response)
