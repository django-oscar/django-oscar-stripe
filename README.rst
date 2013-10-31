===================================
Stripe integration for django-oscar
===================================

*This repo is just a skeleton at the moment. It isn't complete yet.*

This package provides integration between Stripe_ and Oscar_.  It is currently a
work-in-progress - contributions are welcome.  Any questions, please use the Oscar mailing list: `django-oscar@googlegroups.com`_

.. _Stripe: https://stripe.com
.. _Oscar: http://oscarcommerce.com
.. _`django-oscar@googlegroups.com`: https://groups.google.com/forum/?fromgroups#!forum/django-oscar

Useful information:

* `Stripe's Python API`_

.. _`Stripe's Python API`: https://stripe.com/docs/libraries

Contributing
============

Clone the repo, create a virtualenv and run::

    make install

to install all dependencies.  Run the tests with::

    ./runtests.py

There is a sandbox site that you can browse and use to test the Stripe
integration.  Create is using::

    make sandbox

and browse it after::

    cd sandbox
    ./manage.py runserver

TODO
====

* In the sandbox, override the PaymentDetailsView to charge a user's card before
  placing the order.
* Create a "Stripe transaction" model that tracks each request/response to
  Stripe's servers
* Investigate if we need a facade module like in the other Oscar extension libs.
  Their API is so simple, I'm not sure we do.
