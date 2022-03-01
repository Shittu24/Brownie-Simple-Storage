from brownie import accounts, config, SimpleStorage, network


def deploy_simple_storage():
   account = accounts[1]
   simple_storage = SimpleStorage.deploy({"from": account})
   # account = accounts.load("testing"
   stored_value = simple_storage.retrieve()
   print(stored_value)
   transaction = simple_storage.store(15, {"from": account})
   transaction.wait(1)
   updatedstore = simple_storage.retrieve()
   print(updatedstore)


def main():
    deploy_simple_storage
