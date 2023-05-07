# Auto-GPT WebGUI

Using the work of [Auto-GPT WebUI](https://github.com/choephix/auto-gpt-webui). this project offers a user-friendly web interface to interact with [Auto-GPT](https://github.com/Torantulino/Auto-GPT).

It uses Redis instead of Pinecone as a memory Backend, utilizes nginx as a reverse proxy, and only needs Docker to be installed. The application is capable of being launched locally or remotely.

### 🌟 Special thanks to all the contributors to [the original Auto-GPT project](https://github.com/Torantulino/Auto-GPT) and to [Auto-GPT WebUI](https://github.com/choephix/auto-gpt-webui) for their hard work and for making this project possible! 🌟

---

## 🛠️ Installation & Usage

Clone the repo, then enter the root directory and run the following commands:

```bash
export BACKEND_URL=localhost ## or the FQDN of the remote system
docker compose up -d
```

- This will start the different containers.
- The web interface can be accessed under (http://localhost:7070) or using the FQDN of the remote machine.

Once finished, use the following command to shutdown and cleanup the docker environment.

```bash
docker compose down -v --remove-orphans
```

There are a few alerts about missing API keys after you access the web console. You need to fill these out for the application to work correctly. For instructions, please look below.

---

## ⚙ Requirements and Configuration


### Docker and docker compose installation

Please refer to the official [docker](https://docs.docker.com/engine/install/) and [compose](https://docs.docker.com/compose/install/linux/) documentation.

### OpenAI API key

Follow these steps to obtain an OpenAI API key:

1. Visit the [**OpenAI Platform**](https://platform.openai.com/signup) website.
1. If you don't have an account yet, sign up by providing your email, name, and creating a password.
1. After signing up or logging in, go to the [**API Keys**](https://platform.openai.com/account/api-keys) section in your account.
1. Click the **Create an API key** button to generate a new API key.
1. Copy the API key and paste it in the WebGUI to use it with Auto-GPT.
- ⚠️ Keep your API key secure and never share it with anyone. Treat it like a password.
