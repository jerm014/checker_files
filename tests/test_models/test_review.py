#!/usr/bin/python3
""" Tests for Review"""
import unittest
from tests.test_models.test_base_model import test_BaseModel
from models.review import Review
from models import storage_type


class test_Review(unittest.TestCase):
    """ """

    def __init__(self, *args, **kwargs):
        """ """
        super().__init__(*args, **kwargs)
        self.name = "Review"
        self.value = Review

    def test_place_id(self):
        """ """
        pass
        #  new = self.value()
        #  self.assertEqual(type(new.place_id), str)

    def test_user_id(self):
        """ """
        pass
        #  new = self.value()
        #  self.assertEqual(type(new.user_id), str)

    def test_text(self):
        """ """
        pass
        #  new = self.value()
        #  self.assertEqual(type(new.text), str)
