import rsvp
import mongomock
import unittest
import json

class BaseTest:
    def setup_method(self):
        rsvp.client = mongomock.MongoClient()
        rsvp.db = rsvp.client.mock_db_function
        self.client = rsvp.app.test_client()
        print ("hogaya")

    def test_dict(self):
        doc = rsvp.RSVP("test name", "test@example.com", "1")
        print ("hogaya")
        with rsvp.app.test_request_context():
            assert doc.dict() == {
                "_id": "1",
                "name": "test name",
                "email": "test@example.com",
                "links": {
                    "self": "http://localhost/api/rsvps/1"
                }
            }

def main():
  obj=BaseTest()
  obj.setup_method()
  obj.test_dict()

if __name__ == "__main__":
  main()
