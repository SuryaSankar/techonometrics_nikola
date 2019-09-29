.. title: A short introduction to the Jupyter ecosystem
.. slug: a-short-introduction-to-jupyter-ecosystem
.. date: 2019-09-03 01:20:05 UTC
.. status: draft


In this post, we will discuss the steps to be followed in order to setup our own Jupyterhub server. We will use Ansible as the provisioning tool. So this post will also serve as a gentle introduction to Ansible.But first, a small introduction to the Jupyter eco-system and why one would want to set up a Jupyterhub server.

A quick intro to the Jupyter Notebooks
=========================================

A Jupyter notebook is simply a browser based python console which communicates with a python process running on the local machine or a remote server. If you are a research scientist or data analyst who is starting work on a new topic, one of the first things you are going to do is to open a python console and play around with the data you have. Once you are sure that you have come up with something that is worth sharing with your peers, you will want to convert the exploratory analysis you just did into a presentable format. Jupyter notebooks were developed to make this process very simple by just making the python console itself a shareable document. 

Here are some examples,
1. A scientific paper on RNA sequence analysis published as a jupyter notebook - https://nbviewer.jupyter.org/github/maayanlab/Zika-RNAseq-Pipeline/blob/master/Zika.ipynb 

2. A notebook which has been created to explain Stoichometry for Chemical Engineering students https://nbviewer.jupyter.org/github/jckantor/CBE20255/blob/master/notebooks/02.01-Balancing-Reactions.ipynb

As you can see from above examples, the notebook is basically a collection of "Cells", a cell being a block of code / text. Text and code blocks can be interspersed freely, so if you are exploring a mathematical formula for example, you can freely mix the textual annotations which explain the formula and pythonic code which can demonstrate the formula in action by passing some inputs to a method and retrieving the output. And the fact that these notebooks are built on top of web technologies, means that the jupyter notebook consoles are capable of supporting a much richer output than plain shell based consoles. Most visualization libraries these days provide out of the box support to render the output on a jupyter notebook. 

All these factors make Jupyter notebooks an ideal tool for research. It is a no-brainer to straight away start the work on a Jupyter Notebook, progressively refine it and then when ready to go, just share the notebooks itself with others which become live documents which the user can interact with. And there are various libraries which allow the notebook creator to accept input from the user and modify the output accordingly - which means that your notebooks can be as live and interactive as you can imagine it to be.

But researchers are not the only ones who can take advantage of the capabilities of Jupyter notebooks. Content writers can benefit as well. Jupyter notebooks can be readily converted into static HTML documents which can be shared as blog posts. So a financial journalist reporting on the financials of a company can easily insert small snippets of code which pull the latest financial data of the company available on the internet and run some analysis on it and convert it into attractive visualizations. These become a part of the document and when the notebook is exported as html, these visualizations become a part of the exported document. If the writer were technically savvy, they will set up a scheduled task which will do the conversion of the notebook to html at regular intervals - say every week so that the post always reflects the latest data. 
Similarly one can imagine how so many other kinds of content writers would benefit - technical writers writing posts on scientific topics which can be annotated with visualizations, journalists who want to report on some political or economic stats, the list is endless. 

Installing and using jupyter notebooks for your own use is very simple. You just install the python package as `pip install jupyter` and then you are ready to go. Calling `jupyter` from the shell then spawns a server which can be interacted with via the web client. The default web interface that you see is the classic jupyter interface. But it is preferable to use the newer web client - which is called JupyterLab.

JupyterLab is the new generation user interface for Jupyter notebooks. Several third party ui components have been developed on top of it which add various rich functionalities to the Jupyter ecosystem (There is a plugin which provides git support for example)

Why JupyterHub?
===============
If you are using jupyter notebooks only for your own consumption, then the in built server which is executed on your local machine when you invoke `jupyter` or `jupyter lab` on the command line is sufficient for your purposes. But if you have to host the notebooks on a remote server and provide access to others, then it becomes necessary to setup a JupyterHub. 
1. The server which is spawned when launching a Jupyter notebook, does not support authentication. JupyterHub does. You can setup user accounts and allow access only to authorized users. This is obviously essential if you are going to host the notebooks on a server
2. If you are working with a team, Jupyterhub allows you to create multiple user accounts on the same JupyterHub server. Each account can be provided a separate home directory - so all the team members can work on their own notebooks in their own workspaces.


Why Jupyter can serve as a good content management system for a blog
=====================================================================
The Jupyter ecosystem has more than adequate tools necessary for a good content management system
1. 
As mentioned above, JupyterLab has a rich ecosystem of plugins which provide various content related functionalities. Thus the web interface acts like a browser based IDE - making it very suitable for programming and data science blogs. Git can be integrated for version control. Apart from supporting jupyter notebooks, the JupyterLab IDE also has excellent support for markdown, including a live preview option. This makes it an excellent choice for a content management system. 