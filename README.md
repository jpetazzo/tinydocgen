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

If you want to use it, have a look at mou.j2.
