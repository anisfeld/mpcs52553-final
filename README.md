# Txt2data

The purpose of this web application is to make it easy for humans classify texts and images cleanly.

Use cases include:
- collecting data about text and image sources with a large group
- building training data sets for ML projects
- reviewing predicted outcomes from ML projects

# Comments / Questions

I have a set of models called txt and description that were a prototype, but I kept here to help clarify the vision. I want users to be able to flexibly design projects to fit their specifications. This seems difficult, because it requires allowing users the ability to create their own tables.

I think I also need a team model to allow owners to give others access to projects. I imagine it will look something like 

Team
	project_id: integer
	user_id: integer
	owner: boolean
