# Tomb

Tomb is an 100% free and open source system for file encryption on GNU/Linux, facilitating the backup of secret files. Tomb is written in code that is easy to review and links commonly shared components.

Tomb generates encrypted storage folders to be opened and closed using their associated keyfiles, which are also protected with a password chosen by the user.

- [Tomb's Github repository](https://github.com/dyne/Tomb)
- [Tomb's website](https://www.dyne.org/software/tomb)

## Running it

**Note:** Running tomb as described here is not secure. Use for testing purposes only.

    docker run --rm phylor/tomb

    docker run --rm -v $PWD:/tomb -v /dev/urandom:/dev/random --privileged -it -v $PWD:/media phylor/tomb
