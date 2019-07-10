# Tiny Document Generator

Useful when you need to generate a bunch of documents
following a similar template.

I use this to generate the Memorandum Of Understanding
for my customers when I deliver private training.

This is how I use it:

1. `cp sample.yaml my-customer-name.yaml`
2. `vim my-customer-name.yaml`
3. Edit YAML
4. `make`
5. After file my-customer-name.pdf is generated, review it, print/send it as necessary
6. PROFIT!

## How it works

The file [mou.j2](mou.j2) is basically Markdown with
Jinja2 tags in it. We use j2cli to render that template
to "pure" Markdown. Then we use markdown2 to render
that markdown to HTML. Finally we use weasyprint to
render that HTML to PDF. Voilà!

## Using it for your own stuff

It's using a few Python dependencies. I recommend
that you have Python and pip installed, then install
the dependencies with `pip install --user -r requirements.txt`.
If you want to manage the dependencies in a different
way or use a container or whatever, you absolutely can!

You will probably want to customize mou.j2 to suit your needs.
