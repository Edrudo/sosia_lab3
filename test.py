import unittest
import OperationsManager
import math

class Testing(unittest.TestCase):

    def test_perform_division_by_zero(self):
        manager = OperationsManager.OperationsManager(1, 0)
        res = manager.perform_division()
        self.assertEqual(res, math.nan)

    def test_perform_division(self):
        manager = OperationsManager.OperationsManager(4, 2)
        res = manager.perform_division()
        self.assertEqual(res, 2)

    def test_perform_multiplication(self):
        manager = OperationsManager.OperationsManager(1, 2)
        res = manager.perform_division()
        self.assertEqual(res, 2)

if __name__ == '__main__':
    unittest.main()