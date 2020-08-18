Plants 'n Pups
===

## Domain Model

Puppy -< Visit >- Plant

## User Stories

As a user, I can...
- [x] Login as a puppy (Read)
- View my profile (Read) 
- View a list of all the plants I've visited (Read)
- Visit a new plant (Create)
- Remove a visit (Delete)

## Tables

puppies
- name
- breed
- age

plants
- size
- genus
- common_name

visits
- puppy_id
- plant_id
- time
- scent_notes