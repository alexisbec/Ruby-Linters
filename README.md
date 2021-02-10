# Ruby Capstone

## Description

This is the Capstone Project from the Microverse Ruby course. I had to create my own linter, a tool that helps you to find some syntax errors in your code with the purpose of making it look better.

- Two spaces: It will check if any of your lines have two spaces between each element.
- Spaces before an operator.
- Spaces between two operators.
- Spaces after an operator.
- Semicolons: The semicolons are unnecessary at the end of the line, so it will return an error.
- Spaces at the end of the line.
- Empty lines.

The linter describes all the errors that your program has and the total of the errors.

![screenshot](assets/output_screenshot.png)

## Errors

Here are some examples of bad / good code that the linter checks.

**_Two spaces between elements_**

> Bad code:

```
def  sum
  counter += 1
end
```

> Good code:

```
def sum
  counter += 1
end
```

**_Spaces before an operator_**

> Bad code:

```
def sum
  counter+= 1
end
```

> Good code:

```
def sum
  counter += 1
end
```

**_Spaces between two operators_**

> Bad code:

```
def sum
  counter + = 1
end
```

> Good code:

```
def sum
  counter += 1
end
```

**_Spaces after an operator_**

> Bad code:

```
def sum
  counter +=1
end
```

> Good code:

```
def sum
  counter += 1
end
```

**_Semicolons_**

> Bad code:

```
def sum
  counter += 1;
end
```

> Good code:

```
def sum
  counter += 1
end
```

**_Spaces at the end of the line_**
> The | symbol shows where the line ends

> Bad code:

```
def sum
  counter += 1    |
end
```

> Good code:

```
def sum
  counter += 1|
end
```

**_Empty lines_**

> Bad code:

```


def sum
  counter += 1


end
```

> Good code:

```
def sum
  counter += 1
end
```

## Getting started

- Clone this repo with this line: `git clone https://github.com/alexisbec/ruby-capstone.git`
- Go to the project directory `cd ruby_capstone`
- Install colorize gem with: `gem install colorize`
- Install rspec with: `gem install rspec`
- Go to the `main.rb` file with: `cd .\bin\`
- Run the command `ruby .\main.rb`

## Author

👤 **Alexis Varela**

- Github: [@alexisbec](https://github.com/alexisbec)
- Linkedin: [Alexis Varela](www.linkedin.com/in/alexbec)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/alexisbec/ruby-capstone/issues).

## Show your support

Give a ⭐️ if you like this project!

## License

This project is [MIT](https://github.com/alexisbec/ruby-capstone/blob/feature/LICENSE) licensed.
