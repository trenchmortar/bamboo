type case_interface = Ethereum.function_signature

val case_interface_of : unit Syntax.case -> case_interface

type contract_interface =
  { contract_interface_name : string
    (** [contract_interface_name] is the name of the contract. *)
  ; contract_interface_args : Syntax.typ list
  ; contract_interface_cases : case_interface list
  ; contract_interface_continuations : string list
    (** [contract_interface_transitions] lists the names of contracts that
        this one can continue into *)
  }

val contract_interface_of : unit Syntax.contract -> contract_interface
