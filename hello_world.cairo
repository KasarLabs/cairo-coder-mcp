#[starknet::interface]
pub trait IHelloWorld<TContractState> {
    /// Set a greeting message
    fn set_greeting(ref self: TContractState, message: felt252);
    /// Get the current greeting message
    fn get_greeting(self: @TContractState) -> felt252;
    /// Get the number of times the greeting has been updated
    fn get_update_count(self: @TContractState) -> u32;
    /// Say hello with the current greeting
    fn say_hello(self: @TContractState) -> felt252;
}

#[starknet::contract]
mod HelloWorld {
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

    #[storage]
    struct Storage {
        greeting: felt252,
        update_count: u32,
    }

    #[constructor]
    fn constructor(ref self: ContractState, initial_greeting: felt252) {
        self.greeting.write(initial_greeting);
        self.update_count.write(0);
    }

    #[abi(embed_v0)]
    impl HelloWorldImpl of super::IHelloWorld<ContractState> {
        fn set_greeting(ref self: ContractState, message: felt252) {
            self.greeting.write(message);
            let current_count = self.update_count.read();
            self.update_count.write(current_count + 1);
        }

        fn get_greeting(self: @ContractState) -> felt252 {
            self.greeting.read()
        }

        fn get_update_count(self: @ContractState) -> u32 {
            self.update_count.read()
        }

        fn say_hello(self: @ContractState) -> felt252 {
            self.greeting.read()
        }
    }

    #[generate_trait]
    impl InternalFunctions of InternalFunctionsTrait {
        fn _internal_helper(self: @ContractState) -> felt252 {
            // Example of an internal function
            self.greeting.read()
        }
    }
} 