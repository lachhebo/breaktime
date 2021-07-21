
# breaktime

A tool to block your github action CI during weekends or breaktime.

## behavior

CI is blocked (it will failed) if runned:

- during weekends
- after 20pm 
- for lunch time (between 12h and 13h)


## why 

- avoid burnout


## how to use it 


add in your github action yaml file:

    - name: breaktime-action
      uses: lachhebo/breaktime@v1.1
