#!/usr/bin/python3
""" Tests for City """
import unittest
from tests.test_models.test_base_model import test_BaseModel
from models.city import City
from models import storage_type


class test_City(unittest.TestCase):
    """ """

    def __init__(self, *args, **kwargs):
        """ """
        super().__init__(*args, **kwargs)
        self.name = "City"
        self.value = City

    def test_state_id(self):
        """ """
        pass
        #  new = self.value()
        #  self.assertEqual(type(new.state_id), str)

    def test_name(self):
        """ """
        pass
        #  new = self.value()
        #  self.assertEqual(type(new.name), str)
