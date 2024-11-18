# AdriTemplater

A simple templating engine powered by python. Although initially made for the purpose of creating multilingual single page websites, it is written with the possiblity of broadening its usecases in mind.

## Usage
You only need the python file, but you can use the additional files as a starting point.
- `git clone https://github.com/Adrigorithm/AdriTemplater.git`
- `cd AdriTemplater`

### Where is my pip package? wtf?
**No.** This code is not near production ready, I might make it so someday, provided this project is actually used by somebody.

Now it is time to run the script (You will need `python` to run this).
- `python3 templater.py` (or `python3 templater.py -h`) will show you the CLI synompsis, this is your main reference.
An example command could be:
- `python3 templater.py translations.csv . template.html`
This will do a few things. It will create a copy of `template.html` whist replacing every **template string** with a matching translation. For every language it can find in `translations.csv`, it will create a directory named so and create the templated file for that language inside.
- **template string** is something like `< n >` where `n` should be an integer matching the translations on line nr. `n + 2`. So `< 0 >` would match the 2nd line of `translations.csv`, which is the first actual translation.

### Limitations
- One char delimiters
Currently you can only set one character delimiters, this is done to keep the program efficient and less complex, I plan to change this however, to increase customizability.
- Singular file input and singular directory output
As I mentioned before, this project was originally tailored for my single page application. In the future this functionality will likely be implemented through a **configuration file**.
- Not idiot proof
This problem does some checking (but not a lot). This is once again to keep it simple and efficient and allows for more flexibility. This does however also mean you can make more mistakes. The program trusts you to not do stupid things.

## FAQ
- **Have you ever heard of `Jinja2`?**
*As a matter of fact I have. I do like to create my own solutions (and problems) at times. And as I needed something light and wanted to brush up on my python knowledge anyway, this seemed reasonable.*
- **I have an idea/bug/question/...**
*For most things I suggest just creating a `GitHub` issue. For something not related to the project itself you can email me.*
- **This sucks.**
*I know.*
