
# breaktime

A tool to block your github action CI during weekends or breaktime.

## behavior

CI is blocked (it will failed) if runned:

- during weekends
- after 20pm 


## why 

- avoid burnout


## how to use it 


add in your github action yaml file:

    - uses: actions/breaktime-action@v1.1
